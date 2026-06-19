```bash

helm repo add nvidia https://helm.ngc.nvidia.com/nvidia
helm repo update

$ helm search repo nvidia/gpu-operator
NAME               	CHART VERSION	APP VERSION	DESCRIPTION
nvidia/gpu-operator	v26.3.2      	v26.3.2    	NVIDIA GPU Operator creates/configures/manages ...
$

helm pull nvidia/gpu-operator --version v26.3.2

helm install --debug --dry-run=client --wait --generate-name -n gpu-operator --create-namespace nvidia/gpu-operator --version v26.3.2 > ./learn/kubernetes/debug.log 2>&1

helm install --debug --dry-run=client --wait --generate-name -n gpu-operator --create-namespace -f ./learn/kubernetes/myvalues.yaml nvidia/gpu-operator --version v26.3.2 > ./learn/kubernetes/debug.log 2>&1

helm uninstall gpu-operator --namespace gpu-operator

helm install --wait -n gpu-operator --create-namespace -f myvalues.yaml gpu-operator nvidia/gpu-operator --version v26.3.2

root@ubuntu-mass:~# helm get values gpu-operator -n gpu-operator
USER-SUPPLIED VALUES:
driver:
  image: lanzhiwang/nvidia-driver
toolkit:
  env:
  - name: CONTAINERD_SOCKET
    value: /run/k3s/containerd/containerd.sock
root@ubuntu-mass:~#

```

--------------------------------------------------------------------------------------------------

Q: 假设你是一位精通 kubernetes 和 rke2 的高级开发人员, 现在我使用 rke2 部署了一个 kubernetes 集群之后, 我在 kubernetes 集群中使用 helm 部署了一个应用, 但是我现在想使用我自己构建的镜像启动我的应用, 所以我在 helm 中修改了相关参数, 目前参数是生效的, 我的镜像存储在 docker hub 上, 我已经通过 `crictl pull lanzhiwang/nvidia-driver:sha-e449816` 命令拉取到机器上了, 我现在想改一下镜像 tag. 类似 docker tag, 我应该如何使用 crictl 或者 ctr

在 RKE2 环境中, 由于底层的容器运行时是 containerd, 在使用命令行工具修改镜像 Tag(类似 `docker tag`)时, 会有一些工具设计上的限制和特定的操作要求:

1. 为什么不能用 `crictl`?
   `crictl` 是专门为 Kubernetes 容器运行时接口(CRI)设计的调试工具. 因为 CRI 规范本身并没有定义"重命名或标记(Tag)镜像"的 API, 所以 `crictl` 不支持 tag 相关的操作.

2. 为什么应该使用 `ctr`?
   `ctr` 是 `containerd` 官方自带的、面向开发和底层的 CLI 工具, 它提供了完整的镜像生命周期管理功能, 包括 `ctr images tag`.

---

### 如何在 RKE2 中使用 `ctr` 为镜像重新打 Tag

要在 RKE2 下成功运行 `ctr` 命令, 必须注意两个关键参数:
* Socket 路径: RKE2 的 containerd socket 路径默认在 `/run/k3s/containerd/containerd.sock`.
* 命名空间(Namespace): Kubernetes 在 containerd 中使用的是名为 `k8s.io` 的命名空间. 如果不用 `-n k8s.io` 参数, `ctr` 默认会访问 `default` 空间, 将无法读取到 Kubernetes 已拉取的镜像, 重新打的 Tag 也会对 Kubernetes 不可见.

#### 第一步: 确认已拉取镜像的完整参考名称
通过 `crictl` 或者 `ctr` 列出镜像, 以找到你拉取的镜像的完整注册表前缀(Docker Hub 镜像在 containerd 中通常会被补全为 `docker.io/`):
```bash
crictl images | grep nvidia-driver

root@ubuntu-mass:~# crictl images | grep nvidia-driver
docker.io/lanzhiwang/nvidia-driver                                                 sha-e449816                    5d0db2075bc42       834MB
root@ubuntu-mass:~#

```
或者使用 `ctr`:
```bash
/var/lib/rancher/rke2/bin/ctr -a /run/k3s/containerd/containerd.sock -n k8s.io images list | grep nvidia-driver

root@ubuntu-mass:~# ctr -a /run/k3s/containerd/containerd.sock -n k8s.io images list | grep nvidia-driver
docker.io/lanzhiwang/nvidia-driver:sha-e449816                                                                                                           application/vnd.docker.distribution.manifest.v2+json      sha256:91299a4ecea61d57edb4cc1a0195ca6a425a0d904f55d4ed47a257afe6b41834 795.0 MiB linux/amd64                                                                                            io.cri-containerd.image=managed
docker.io/lanzhiwang/nvidia-driver@sha256:91299a4ecea61d57edb4cc1a0195ca6a425a0d904f55d4ed47a257afe6b41834                                               application/vnd.docker.distribution.manifest.v2+json      sha256:91299a4ecea61d57edb4cc1a0195ca6a425a0d904f55d4ed47a257afe6b41834 795.0 MiB linux/amd64                                                                                            io.cri-containerd.image=managed
root@ubuntu-mass:~#

```
假设你看到的完整镜像是: `docker.io/lanzhiwang/nvidia-driver:sha-e449816`.

#### 第二步: 使用 `ctr` 进行打 Tag 操作
使用 `ctr images tag` 命令. 其语法为 `ctr images tag <原镜像> <新镜像>`:

```bash
/var/lib/rancher/rke2/bin/ctr -a /run/k3s/containerd/containerd.sock \
  -n k8s.io \
  images tag \
  docker.io/lanzhiwang/nvidia-driver:sha-e449816 \
  docker.io/lanzhiwang/nvidia-driver:<新的Tag名称>


root@ubuntu-mass:~# ctr -a /run/k3s/containerd/containerd.sock -n k8s.io images tag \
  docker.io/lanzhiwang/nvidia-driver:sha-e449816 \
  nvcr.io/nvidia/lanzhiwang/nvidia-driver:580.126.20-ubuntu22.04
nvcr.io/nvidia/lanzhiwang/nvidia-driver:580.126.20-ubuntu22.04
root@ubuntu-mass:~#

root@ubuntu-mass:~# crictl images | grep nvidia-driver
docker.io/lanzhiwang/nvidia-driver                                                 sha-e449816                    5d0db2075bc42       834MB
nvcr.io/nvidia/lanzhiwang/nvidia-driver                                            580.126.20-ubuntu22.04         5d0db2075bc42       834MB
root@ubuntu-mass:~#

root@ubuntu-mass:~# ctr -a /run/k3s/containerd/containerd.sock -n k8s.io images list | grep nvidia-driver
docker.io/lanzhiwang/nvidia-driver:sha-e449816                                                                                                           application/vnd.docker.distribution.manifest.v2+json      sha256:91299a4ecea61d57edb4cc1a0195ca6a425a0d904f55d4ed47a257afe6b41834 795.0 MiB linux/amd64                                                                                            io.cri-containerd.image=managed
docker.io/lanzhiwang/nvidia-driver@sha256:91299a4ecea61d57edb4cc1a0195ca6a425a0d904f55d4ed47a257afe6b41834                                               application/vnd.docker.distribution.manifest.v2+json      sha256:91299a4ecea61d57edb4cc1a0195ca6a425a0d904f55d4ed47a257afe6b41834 795.0 MiB linux/amd64                                                                                            io.cri-containerd.image=managed
nvcr.io/nvidia/lanzhiwang/nvidia-driver:580.126.20-ubuntu22.04                                                                                           application/vnd.docker.distribution.manifest.v2+json      sha256:91299a4ecea61d57edb4cc1a0195ca6a425a0d904f55d4ed47a257afe6b41834 795.0 MiB linux/amd64                                                                                            io.cri-containerd.image=managed
root@ubuntu-mass:~#

```
(请将 `<新的Tag名称>` 替换为你期望的标签, 如 `latest` 或特定版本号)

#### 第三步: 验证新 Tag 是否生效
运行 `crictl images`, 验证是否出现了带有新 Tag 的镜像, 并且其 IMAGE ID 与原镜像一致:
```bash
crictl images | grep nvidia-driver
```

此时, 你就可以在 Helm 的 `values.yaml` 或资源清单中直接将镜像 Tag 修改为你刚才新打的那个 Tag 名字, 由于本地已经存在该 Tag 的镜像, Kubernetes 默认不会再去远端拉取(需确保 `imagePullPolicy` 设置为 `IfNotPresent`).
