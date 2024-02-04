### Common settings

# Board
BR2_SOC_INGENIC=y

# Architecture
BR2_mipsel=y
BR2_mips_xburst=y
# BR2_MIPS_SOFT_FLOAT is not set
# BR2_MIPS_FP32_MODE_XX is not set
BR2_MIPS_NAN_LEGACY=y
BR2_MIPS_OABI32=y

# Toolchain
BR2_CCACHE=y
BR2_CCACHE_DIR="$(HOME)/.ccache"
BR2_GCC_VERSION_13_X=y
BR2_REPRODUCIBLE=y
BR2_PER_PACKAGE_DIRECTORIES=y
BR2_TOOLCHAIN_USES_MUSL=y
BR2_TOOLCHAIN_BUILDROOT_MUSL=y
BR2_TOOLCHAIN_BUILDROOT_VENDOR="openipc"
BR2_TOOLCHAIN_BUILDROOT_LIBC="musl"
# BR2_TOOLCHAIN_BUILDROOT_UCLIBC is not set
# BR2_TOOLCHAIN_BUILDROOT_GLIBC is not set
BR2_EXTRA_GCC_CONFIG_OPTIONS="--with-float=hard"
BR2_TOOLCHAIN_BUILDROOT_CXX=y
BR2_TOOLCHAIN_BUILDROOT_LOCALE=y
BR2_TOOLCHAIN_BUILDROOT_USE_SSP=y

# System configuration
BR2_TARGET_GENERIC_HOSTNAME="$(SOC_MODEL)"
BR2_TARGET_GENERIC_ISSUE="Welcome to OpenIPC"
# BR2_TARGET_TZ_INFO is not set
BR2_ROOTFS_MERGED_USR=y
BR2_ROOTFS_OVERLAY="$(BR2_EXTERNAL)/overlay"
BR2_ROOTFS_POST_BUILD_SCRIPT="$(BR2_EXTERNAL)/scripts/rootfs_script.sh"

# Kernel
BR2_LINUX_KERNEL=y
BR2_LINUX_KERNEL_CUSTOM_TARBALL=y
BR2_LINUX_KERNEL_CUSTOM_TARBALL_LOCATION="$(OPENIPC_KERNEL)"
BR2_LINUX_KERNEL_USE_CUSTOM_CONFIG=y
BR2_LINUX_KERNEL_UIMAGE=y
BR2_LINUX_KERNEL_LZMA=y
BR2_KERNEL_HEADERS_VERSION=y

BR2_PACKAGE_BUSYBOX_CONFIG="$(BR2_EXTERNAL)/package/busybox/busybox.config"
BR2_GLOBAL_PATCH_DIR="$(BR2_EXTERNAL)/package/all-patches"

# Filesystem
BR2_TARGET_ROOTFS_SQUASHFS=y
BR2_TARGET_ROOTFS_SQUASHFS4_XZ=y

BR2_OPENIPC_SYSTEM_PACKAGES=y
