```bash
root@bm-192-168-100-44:~/dd# ./NVIDIA-Linux-x86_64-550.163.01.run --ui=none --no-questions --accept-license
Verifying archive integrity... OK
Uncompressing NVIDIA Accelerated Graphics Driver for Linux-x86_64 550.163.01........................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................

Welcome to the NVIDIA Software Installer for Unix/Linux

Detected 224 CPUs online; setting concurrency level to 32.
Scanning the initramfs with lsinitramfs...
Executing: /usr/bin/lsinitramfs   -l /boot/initrd.img-5.15.0-158-generic
Installing NVIDIA driver version 550.163.01.
Performing CC sanity check with CC="/usr/bin/cc".
Performing CC check.
Kernel source path: '/lib/modules/5.15.0-158-generic/build'
Kernel output path: '/lib/modules/5.15.0-158-generic/build'
Performing Compiler check.
Initramfs scan complete.
Performing Dom0 check.
Performing Xen check.
Performing PREEMPT_RT check.
Performing vgpu_kvm check.
Cleaning kernel module build directory.
Building kernel modules:
  [##############################] 100%
Kernel module compilation complete.
Kernel messages:
[  170.724647] [drm] [nvidia-drm] [GPU ID 0x00005a00] Loading driver
[  170.724648] [drm] Initialized nvidia-drm 0.0.0 20160202 for 0000:5a:00.0 on minor 4
[  170.724861] [drm] [nvidia-drm] [GPU ID 0x00008700] Loading driver
[  170.724862] [drm] Initialized nvidia-drm 0.0.0 20160202 for 0000:87:00.0 on minor 5
[  170.724973] [drm] [nvidia-drm] [GPU ID 0x0000ae00] Loading driver
[  170.724974] [drm] Initialized nvidia-drm 0.0.0 20160202 for 0000:ae:00.0 on minor 6
[  170.725060] [drm] [nvidia-drm] [GPU ID 0x0000c200] Loading driver
[  170.725061] [drm] Initialized nvidia-drm 0.0.0 20160202 for 0000:c2:00.0 on minor 7
[  170.725128] [drm] [nvidia-drm] [GPU ID 0x0000d700] Loading driver
[  170.725129] [drm] Initialized nvidia-drm 0.0.0 20160202 for 0000:d7:00.0 on minor 8
[  170.728061] [drm] [nvidia-drm] [GPU ID 0x0000d700] Unloading driver
[  170.728279] [drm] [nvidia-drm] [GPU ID 0x0000c200] Unloading driver
[  170.728403] [drm] [nvidia-drm] [GPU ID 0x0000ae00] Unloading driver
[  170.728548] [drm] [nvidia-drm] [GPU ID 0x00008700] Unloading driver
[  170.728650] [drm] [nvidia-drm] [GPU ID 0x00005a00] Unloading driver
[  170.728765] [drm] [nvidia-drm] [GPU ID 0x00004800] Unloading driver
[  170.728866] [drm] [nvidia-drm] [GPU ID 0x00003400] Unloading driver
[  170.728961] [drm] [nvidia-drm] [GPU ID 0x00000f00] Unloading driver
[  170.816607] nvidia-modeset: Unloading
[  170.897081] nvidia-uvm: Unloaded the UVM driver.
[  170.977780] nvidia-nvswitch3: removing device 0000:06:00.0
[  171.898549] nvidia-nvswitch2: removing device 0000:05:00.0
[  172.476251] nvidia-nvswitch1: removing device 0000:04:00.0
[  172.996885] nvidia-nvswitch0: removing device 0000:03:00.0
[  173.554788] nvidia-nvlink: Unregistered Nvlink Core, major device number 506

WARNING: nvidia-installer was forced to guess the X library path '/usr/lib' and X module path '/usr/lib/xorg/modules'; these paths were not queryable from the system.  If X
         fails to find the NVIDIA X driver module, please install the `pkg-config` utility and the X.Org SDK/development package for your distribution and reinstall the
         driver.

Install NVIDIA's 32-bit compatibility libraries? (Answer: Yes)

WARNING: This NVIDIA driver package includes Vulkan components, but no Vulkan ICD loader was detected on this system. The NVIDIA Vulkan ICD will not function without the
         loader. Most distributions package the Vulkan loader; try installing the "vulkan-loader", "vulkan-icd-loader", or "libvulkan1" package.

Would you like to register the kernel module sources with DKMS? This will allow DKMS to automatically build a new module, if your kernel changes later. (Answer: Yes)
Registering the kernel modules with DKMS:: Generating DKMS tarball
  [##############################] 100%
Skipping GLVND file: "libOpenGL.so.0"
Skipping GLVND file: "libOpenGL.so"
Skipping GLVND file: "libGLESv1_CM.so.1.2.0"
Skipping GLVND file: "libGLESv1_CM.so.1"
Skipping GLVND file: "libGLESv1_CM.so"
Skipping GLVND file: "libGLESv2.so.2.1.0"
Skipping GLVND file: "libGLESv2.so.2"
Skipping GLVND file: "libGLESv2.so"
Skipping GLVND file: "libGLdispatch.so.0"
Skipping GLVND file: "libGLX.so.0"
Skipping GLVND file: "libGLX.so"
Skipping GLVND file: "libGL.so.1.7.0"
Skipping GLVND file: "libGL.so.1"
Skipping GLVND file: "libGL.so"
Skipping GLVND file: "libEGL.so.1.1.0"
Skipping GLVND file: "libEGL.so.1"
Skipping GLVND file: "libEGL.so"
Skipping GLVND file: "./32/libOpenGL.so.0"
Skipping GLVND file: "libOpenGL.so"
Skipping GLVND file: "./32/libGLdispatch.so.0"
Skipping GLVND file: "./32/libGLESv2.so.2.1.0"
Skipping GLVND file: "libGLESv2.so.2"
Skipping GLVND file: "libGLESv2.so"
Skipping GLVND file: "./32/libGLESv1_CM.so.1.2.0"
Skipping GLVND file: "libGLESv1_CM.so.1"
Skipping GLVND file: "libGLESv1_CM.so"
Skipping GLVND file: "./32/libGL.so.1.7.0"
Skipping GLVND file: "libGL.so.1"
Skipping GLVND file: "libGL.so"
Skipping GLVND file: "./32/libGLX.so.0"
Skipping GLVND file: "libGLX.so"
Skipping GLVND file: "./32/libEGL.so.1.1.0"
Skipping GLVND file: "libEGL.so.1"
Skipping GLVND file: "libEGL.so"

WARNING: Unable to determine the path to install the libglvnd EGL vendor library config files. Check that you have pkg-config and the libglvnd development libraries installed,
         or specify a path with --glvnd-egl-config-path.

Searching for conflicting files:: Searching
  [##############################] 100%
Installing 'NVIDIA Accelerated Graphics Driver for Linux-x86_64' (550.163.01):: Installing
  [##############################] 100%
Driver file installation is complete.
Running post-install sanity check:: Checking
  [##############################] 100%
Post-install sanity check passed.

Installation of the NVIDIA Accelerated Graphics Driver for Linux-x86_64 (version: 550.163.01) is now complete.

root@bm-192-168-100-44:~/dd#

``
