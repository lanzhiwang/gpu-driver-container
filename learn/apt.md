
* https://developer.nvidia.com/cuda-downloads

```bash

$ apt search nvidia-open

root@bm-192-168-100-44:~# apt install nvidia-open-560
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  adwaita-icon-theme at-spi2-core dconf-gsettings-backend dconf-service gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme
  libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcolord2 libcups2 libdconf1
  libegl-mesa0 libegl1 libepoxy0 libgbm1 libgdk-pixbuf-2.0-0 libgdk-pixbuf2.0-bin libgdk-pixbuf2.0-common libgtk-3-0 libgtk-3-bin libgtk-3-common liblcms2-2 libnvidia-cfg1-560
  libnvidia-common-560 libnvidia-compute-560 libnvidia-decode-560 libnvidia-encode-560 libnvidia-extra-560 libnvidia-fbc1-560 libnvidia-gl-560 librsvg2-2 librsvg2-common
  libvdpau1 libwayland-client0 libwayland-cursor0 libwayland-egl1 libwayland-server0 libxcursor1 libxcvt0 libxdamage1 libxfont2 libxkbcommon0 libxnvctrl0 mesa-vdpau-drivers
  nvidia-compute-utils-560 nvidia-dkms-560-open nvidia-driver-560-open nvidia-firmware-560-560.35.05 nvidia-kernel-common-560 nvidia-kernel-source-560-open nvidia-modprobe
  nvidia-prime nvidia-settings nvidia-utils-560 python3-xkit screen-resolution-extra session-migration ubuntu-mono vdpau-driver-all x11-xkb-utils xcvt xfonts-base
  xfonts-encodings xfonts-utils xserver-common xserver-xorg-core xserver-xorg-video-nvidia-560
Suggested packages:
  colord cups-common gvfs liblcms2-utils librsvg2-bin nvidia-driver-560 libvdpau-va-gl1 xfs | xserver xfonts-100dpi | xfonts-75dpi xfonts-scalable
Recommended packages:
  libnvidia-compute-560:i386 libnvidia-decode-560:i386 libnvidia-encode-560:i386 libnvidia-fbc1-560:i386 libnvidia-gl-560:i386
The following NEW packages will be installed:
  adwaita-icon-theme at-spi2-core dconf-gsettings-backend dconf-service gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme
  libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcolord2 libcups2 libdconf1
  libegl-mesa0 libegl1 libepoxy0 libgbm1 libgdk-pixbuf-2.0-0 libgdk-pixbuf2.0-bin libgdk-pixbuf2.0-common libgtk-3-0 libgtk-3-bin libgtk-3-common liblcms2-2 libnvidia-cfg1-560
  libnvidia-common-560 libnvidia-compute-560 libnvidia-decode-560 libnvidia-encode-560 libnvidia-extra-560 libnvidia-fbc1-560 libnvidia-gl-560 librsvg2-2 librsvg2-common
  libvdpau1 libwayland-client0 libwayland-cursor0 libwayland-egl1 libwayland-server0 libxcursor1 libxcvt0 libxdamage1 libxfont2 libxkbcommon0 libxnvctrl0 mesa-vdpau-drivers
  nvidia-compute-utils-560 nvidia-dkms-560-open nvidia-driver-560-open nvidia-firmware-560-560.35.05 nvidia-kernel-common-560 nvidia-kernel-source-560-open nvidia-modprobe
  nvidia-open-560 nvidia-prime nvidia-settings nvidia-utils-560 python3-xkit screen-resolution-extra session-migration ubuntu-mono vdpau-driver-all x11-xkb-utils xcvt
  xfonts-base xfonts-encodings xfonts-utils xserver-common xserver-xorg-core xserver-xorg-video-nvidia-560
The following packages will be upgraded:
  libcairo2
1 upgraded, 76 newly installed, 0 to remove and 232 not upgraded.
Need to get 272 MB of archives.
After this operation, 829 MB of additional disk space will be used.
Do you want to continue? [Y/n]


libnvidia-cfg1-560
libnvidia-common-560
libnvidia-compute-560
libnvidia-decode-560
libnvidia-encode-560
libnvidia-extra-560
libnvidia-fbc1-560
libnvidia-gl-560
nvidia-compute-utils-560
nvidia-dkms-560-open
nvidia-driver-560-open
nvidia-firmware-560-560.35.05
nvidia-kernel-common-560
nvidia-kernel-source-560-open
nvidia-modprobe
nvidia-prime
nvidia-settings
nvidia-utils-560
xserver-xorg-video-nvidia-560
nvidia-driver-560
libnvidia-compute-560:i386
libnvidia-decode-560:i386
libnvidia-encode-560:i386
libnvidia-fbc1-560:i386
libnvidia-gl-560:i386
nvidia-open-560
adwaita-icon-theme
at-spi2-core
dconf-gsettings-backend
dconf-service
gsettings-desktop-schemas
gtk-update-icon-cache
hicolor-icon-theme
humanity-icon-theme
libatk-bridge2.0-0
libatk1.0-0
libatk1.0-data
libatspi2.0-0
libavahi-client3
libavahi-common-data
libavahi-common3
libcairo-gobject2
libcairo2
libcolord2
libcups2
libdconf1
libegl-mesa0
libegl1
libepoxy0
libgbm1
libgdk-pixbuf-2.0-0
libgdk-pixbuf2.0-bin
libgdk-pixbuf2.0-common
libgtk-3-0
libgtk-3-bin
libgtk-3-common
liblcms2-2
librsvg2-2
librsvg2-common
libvdpau1
libwayland-client0
libwayland-cursor0
libwayland-egl1
libwayland-server0
libxcursor1
libxcvt0
libxdamage1
libxfont2
libxkbcommon0
libxnvctrl0
mesa-vdpau-drivers
python3-xkit
screen-resolution-extra
session-migration
ubuntu-mono
vdpau-driver-all
x11-xkb-utils
xcvt
xfonts-base
xfonts-encodings
xfonts-utils
xserver-common
xserver-xorg-core
colord
cups-common
gvfs
liblcms2-utils
librsvg2-bin
libvdpau-va-gl1
xfs
xserver
xfonts-100dpi
xfonts-75dpi
xfonts-scalable


$ apt search cuda-toolkit

root@bm-192-168-100-44:~# apt install cuda-toolkit-12-4
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  alsa-topology-conf alsa-ucm-conf at-spi2-core ca-certificates-java cuda-cccl-12-4 cuda-command-line-tools-12-4 cuda-compiler-12-4 cuda-crt-12-4 cuda-cudart-12-4
  cuda-cudart-dev-12-4 cuda-cuobjdump-12-4 cuda-cupti-12-4 cuda-cupti-dev-12-4 cuda-cuxxfilt-12-4 cuda-documentation-12-4 cuda-driver-dev-12-4 cuda-gdb-12-4
  cuda-libraries-12-4 cuda-libraries-dev-12-4 cuda-nsight-12-4 cuda-nsight-compute-12-4 cuda-nsight-systems-12-4 cuda-nvcc-12-4 cuda-nvdisasm-12-4 cuda-nvml-dev-12-4
  cuda-nvprof-12-4 cuda-nvprune-12-4 cuda-nvrtc-12-4 cuda-nvrtc-dev-12-4 cuda-nvtx-12-4 cuda-nvvm-12-4 cuda-nvvp-12-4 cuda-opencl-12-4 cuda-opencl-dev-12-4
  cuda-profiler-api-12-4 cuda-sanitizer-12-4 cuda-toolkit-12-4-config-common cuda-toolkit-12-config-common cuda-toolkit-config-common cuda-tools-12-4 cuda-visual-tools-12-4
  dconf-gsettings-backend dconf-service default-jre default-jre-headless fonts-dejavu-extra gds-tools-12-4 gsettings-desktop-schemas java-common libasound2 libasound2-data
  libatk-bridge2.0-0 libatk-wrapper-java libatk-wrapper-java-jni libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcublas-12-4
  libcublas-dev-12-4 libcufft-12-4 libcufft-dev-12-4 libcufile-12-4 libcufile-dev-12-4 libcups2 libcurand-12-4 libcurand-dev-12-4 libcusolver-12-4 libcusolver-dev-12-4
  libcusparse-12-4 libcusparse-dev-12-4 libdconf1 libegl-mesa0 libegl1 libgbm1 libgif7 liblcms2-2 libnpp-12-4 libnpp-dev-12-4 libnvfatbin-12-4 libnvfatbin-dev-12-4
  libnvjitlink-12-4 libnvjitlink-dev-12-4 libnvjpeg-12-4 libnvjpeg-dev-12-4 libopengl0 libpcsclite1 libtinfo5 libwayland-client0 libwayland-server0 libxcb-icccm4 libxcb-image0
  libxcb-keysyms1 libxcb-render-util0 libxcb-util1 libxcb-xinerama0 libxcb-xinput0 libxcb-xkb1 libxdamage1 libxkbcommon-x11-0 libxkbcommon0 nsight-compute-2024.1.1
  nsight-systems-2023.4.4 openjdk-11-jre openjdk-11-jre-headless session-migration
Suggested packages:
  libasound2-plugins alsa-utils cups-common liblcms2-utils pcscd libnss-mdns fonts-ipafont-gothic fonts-ipafont-mincho fonts-wqy-microhei | fonts-wqy-zenhei fonts-indic
The following NEW packages will be installed:
  alsa-topology-conf alsa-ucm-conf at-spi2-core ca-certificates-java cuda-cccl-12-4 cuda-command-line-tools-12-4 cuda-compiler-12-4 cuda-crt-12-4 cuda-cudart-12-4
  cuda-cudart-dev-12-4 cuda-cuobjdump-12-4 cuda-cupti-12-4 cuda-cupti-dev-12-4 cuda-cuxxfilt-12-4 cuda-documentation-12-4 cuda-driver-dev-12-4 cuda-gdb-12-4
  cuda-libraries-12-4 cuda-libraries-dev-12-4 cuda-nsight-12-4 cuda-nsight-compute-12-4 cuda-nsight-systems-12-4 cuda-nvcc-12-4 cuda-nvdisasm-12-4 cuda-nvml-dev-12-4
  cuda-nvprof-12-4 cuda-nvprune-12-4 cuda-nvrtc-12-4 cuda-nvrtc-dev-12-4 cuda-nvtx-12-4 cuda-nvvm-12-4 cuda-nvvp-12-4 cuda-opencl-12-4 cuda-opencl-dev-12-4
  cuda-profiler-api-12-4 cuda-sanitizer-12-4 cuda-toolkit-12-4 cuda-toolkit-12-4-config-common cuda-toolkit-12-config-common cuda-toolkit-config-common cuda-tools-12-4
  cuda-visual-tools-12-4 dconf-gsettings-backend dconf-service default-jre default-jre-headless fonts-dejavu-extra gds-tools-12-4 gsettings-desktop-schemas java-common
  libasound2 libasound2-data libatk-bridge2.0-0 libatk-wrapper-java libatk-wrapper-java-jni libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data
  libavahi-common3 libcublas-12-4 libcublas-dev-12-4 libcufft-12-4 libcufft-dev-12-4 libcufile-12-4 libcufile-dev-12-4 libcups2 libcurand-12-4 libcurand-dev-12-4
  libcusolver-12-4 libcusolver-dev-12-4 libcusparse-12-4 libcusparse-dev-12-4 libdconf1 libegl-mesa0 libegl1 libgbm1 libgif7 liblcms2-2 libnpp-12-4 libnpp-dev-12-4
  libnvfatbin-12-4 libnvfatbin-dev-12-4 libnvjitlink-12-4 libnvjitlink-dev-12-4 libnvjpeg-12-4 libnvjpeg-dev-12-4 libopengl0 libpcsclite1 libtinfo5 libwayland-client0
  libwayland-server0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-util1 libxcb-xinerama0 libxcb-xinput0 libxcb-xkb1 libxdamage1 libxkbcommon-x11-0
  libxkbcommon0 nsight-compute-2024.1.1 nsight-systems-2023.4.4 openjdk-11-jre openjdk-11-jre-headless session-migration
0 upgraded, 109 newly installed, 0 to remove and 232 not upgraded.
Need to get 3069 MB of archives.
After this operation, 6785 MB of additional disk space will be used.
Do you want to continue? [Y/n]

```
