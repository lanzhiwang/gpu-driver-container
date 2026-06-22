```bash
$ docker pull nvcr.io/nvidia/cuda:13.0.0-base-ubuntu22.04

$ docker run -ti --rm -v /root/huzhi/gpu:/gpu -w /gpu --name cuda-client nvcr.io/nvidia/cuda:13.0.0-base-ubuntu22.04 bash

root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# pwd
/tmp/tmp.3sZuV0uFVY
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# tree -a .
.

0 directories, 0 files
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#

root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# apt-get install -y --no-install-recommends linux-headers-5.15.0-173-generic

root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# dpkg -L linux-headers-5.15.0-173-generic
/.
/lib
/lib/modules
/lib/modules/5.15.0-173-generic
/lib/modules/5.15.0-173-generic/build
/usr
/usr/share
/usr/share/doc
/usr/share/doc/linux-headers-5.15.0-173-generic
/usr/share/doc/linux-headers-5.15.0-173-generic/changelog.Debian.gz
/usr/share/doc/linux-headers-5.15.0-173-generic/copyright
/usr/src
/usr/src/linux-headers-5.15.0-173-generic
/usr/src/linux-headers-5.15.0-173-generic/.config
/usr/src/linux-headers-5.15.0-173-generic/.gitignore
/usr/src/linux-headers-5.15.0-173-generic/.missing-syscalls.d
/usr/src/linux-headers-5.15.0-173-generic/Module.symvers
/usr/src/linux-headers-5.15.0-173-generic/arch
/usr/src/linux-headers-5.15.0-173-generic/include

root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# tree -a /lib/modules/5.15.0-173-generic
/lib/modules/5.15.0-173-generic
|-- build -> /usr/src/linux-headers-5.15.0-173-generic

1 directory, 0 files
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY#

root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# apt-get download -y linux-image-5.15.0-173-generic

root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# tree -a .
.
-- linux-image-5.15.0-173-generic_5.15.0-173.183_amd64.deb

0 directories, 1 file
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#

root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# apt-get download -y linux-modules-5.15.0-173-generic

root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# tree -a .
.
|-- linux-image-5.15.0-173-generic_5.15.0-173.183_amd64.deb
|-- linux-modules-5.15.0-173-generic_5.15.0-173.183_amd64.deb

0 directories, 2 files
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#



root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# dpkg -x linux-image-5.15.0-173-generic_5.15.0-173.183_amd64.deb .
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# tree -a .
.
|-- boot
|   |-- vmlinuz-5.15.0-173-generic
|-- linux-image-5.15.0-173-generic_5.15.0-173.183_amd64.deb
|-- linux-modules-5.15.0-173-generic_5.15.0-173.183_amd64.deb
|-- usr
    |-- share
        |-- doc
            |-- linux-image-5.15.0-173-generic
                |-- changelog.Debian.gz
                |-- copyright

5 directories, 5 files
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# dpkg -x linux-modules-5.15.0-173-generic_5.15.0-173.183_amd64.deb .
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# tree -L 7 .
.
|-- boot
|   |-- System.map-5.15.0-173-generic
|   |-- config-5.15.0-173-generic
|   |-- vmlinuz-5.15.0-173-generic
|-- lib
|   |-- modprobe.d
|   |   |-- blacklist_linux_5.15.0-173-generic.conf
|   |-- modules
|       |-- 5.15.0-173-generic
|           |-- initrd
|           |-- kernel
|           |   |-- arch
|           |   |   |-- x86
|           |   |       |-- crypto
|           |   |       |-- kernel
|           |   |       |-- kvm
|           |   |-- crypto
|           |   |   |-- 842.ko
|           |   |   |-- adiantum.ko
|           |   |   |-- aegis128.ko
|           |   |   |-- aes_ti.ko
|           |   |   |-- af_alg.ko
|           |   |   |-- algif_aead.ko
|           |   |   |-- algif_hash.ko
|           |   |   |-- algif_rng.ko
|           |   |   |-- algif_skcipher.ko
|           |   |   |-- ansi_cprng.ko
|           |   |   |-- asymmetric_keys
|           |   |   |   |-- asym_tpm.ko
|           |   |   |   |-- pkcs7_test_key.ko
|           |   |   |   |-- pkcs8_key_parser.ko
|           |   |   |   |-- tpm_key_parser.ko
|           |   |   |-- async_tx
|           |   |   |   |-- async_memcpy.ko
|           |   |   |   |-- async_pq.ko
|           |   |   |   |-- async_raid6_recov.ko
|           |   |   |   |-- async_tx.ko
|           |   |   |   |-- async_xor.ko
|           |   |   |-- authenc.ko
|           |   |   |-- authencesn.ko
|           |   |   |-- blake2b_generic.ko
|           |   |   |-- blowfish_common.ko
|           |   |   |-- blowfish_generic.ko
|           |   |   |-- camellia_generic.ko
|           |   |   |-- cast5_generic.ko
|           |   |   |-- cast6_generic.ko
|           |   |   |-- cast_common.ko
|           |   |   |-- ccm.ko
|           |   |   |-- cfb.ko
|           |   |   |-- chacha20poly1305.ko
|           |   |   |-- chacha_generic.ko
|           |   |   |-- cmac.ko
|           |   |   |-- crc32_generic.ko
|           |   |   |-- cryptd.ko
|           |   |   |-- crypto_engine.ko
|           |   |   |-- crypto_simd.ko
|           |   |   |-- crypto_user.ko
|           |   |   |-- curve25519-generic.ko
|           |   |   |-- des_generic.ko
|           |   |   |-- ecc.ko
|           |   |   |-- ecdh_generic.ko
|           |   |   |-- ecdsa_generic.ko
|           |   |   |-- echainiv.ko
|           |   |   |-- ecrdsa_generic.ko
|           |   |   |-- essiv.ko
|           |   |   |-- fcrypt.ko
|           |   |   |-- keywrap.ko
|           |   |   |-- lrw.ko
|           |   |   |-- lz4.ko
|           |   |   |-- lz4hc.ko
|           |   |   |-- md4.ko
|           |   |   |-- michael_mic.ko
|           |   |   |-- nhpoly1305.ko
|           |   |   |-- ofb.ko
|           |   |   |-- pcbc.ko
|           |   |   |-- pcrypt.ko
|           |   |   |-- poly1305_generic.ko
|           |   |   |-- rmd160.ko
|           |   |   |-- serpent_generic.ko
|           |   |   |-- sha3_generic.ko
|           |   |   |-- sm2_generic.ko
|           |   |   |-- sm3_generic.ko
|           |   |   |-- sm4_generic.ko
|           |   |   |-- streebog_generic.ko
|           |   |   |-- tcrypt.ko
|           |   |   |-- twofish_common.ko
|           |   |   |-- twofish_generic.ko
|           |   |   |-- vmac.ko
|           |   |   |-- wp512.ko
|           |   |   |-- xcbc.ko
|           |   |   |-- xor.ko
|           |   |   |-- xxhash_generic.ko
|           |   |   |-- zstd.ko
|           |   |-- drivers
|           |   |   |-- acpi
|           |   |   |   |-- acpi_configfs.ko
|           |   |   |   |-- acpi_extlog.ko
|           |   |   |   |-- acpi_ipmi.ko
|           |   |   |   |-- acpi_pad.ko
|           |   |   |   |-- acpi_tad.ko
|           |   |   |   |-- apei
|           |   |   |   |-- dptf
|           |   |   |   |-- ec_sys.ko
|           |   |   |   |-- nfit
|           |   |   |   |-- platform_profile.ko
|           |   |   |   |-- sbs.ko
|           |   |   |   |-- sbshc.ko
|           |   |   |   |-- video.ko
|           |   |   |-- ata
|           |   |   |   |-- acard-ahci.ko
|           |   |   |   |-- ahci.ko
|           |   |   |   |-- ahci_platform.ko
|           |   |   |   |-- libahci.ko
|           |   |   |   |-- libahci_platform.ko
|           |   |   |-- bcma
|           |   |   |   |-- bcma.ko
|           |   |   |-- block
|           |   |   |   |-- brd.ko
|           |   |   |   |-- cryptoloop.ko
|           |   |   |   |-- floppy.ko
|           |   |   |   |-- nbd.ko
|           |   |   |   |-- rbd.ko
|           |   |   |   |-- virtio_blk.ko
|           |   |   |-- bus
|           |   |   |   |-- mhi
|           |   |   |-- char
|           |   |   |   |-- hangcheck-timer.ko
|           |   |   |   |-- hw_random
|           |   |   |   |-- ipmi
|           |   |   |   |-- lp.ko
|           |   |   |   |-- nvram.ko
|           |   |   |   |-- ppdev.ko
|           |   |   |-- crypto
|           |   |   |   |-- ccp
|           |   |   |-- dca
|           |   |   |   |-- dca.ko
|           |   |   |-- firmware
|           |   |   |   |-- dmi-sysfs.ko
|           |   |   |   |-- efi
|           |   |   |   |-- iscsi_ibft.ko
|           |   |   |-- gpu
|           |   |   |   |-- drm
|           |   |   |-- hid
|           |   |   |   |-- hid-generic.ko
|           |   |   |   |-- hid-hyperv.ko
|           |   |   |   |-- hid.ko
|           |   |   |   |-- usbhid
|           |   |   |-- hv
|           |   |   |   |-- hv_balloon.ko
|           |   |   |   |-- hv_utils.ko
|           |   |   |   |-- hv_vmbus.ko
|           |   |   |-- i2c
|           |   |   |   |-- algos
|           |   |   |-- infiniband
|           |   |   |   |-- core
|           |   |   |   |-- ulp
|           |   |   |-- input
|           |   |   |   |-- evbug.ko
|           |   |   |   |-- gameport
|           |   |   |   |-- input-leds.ko
|           |   |   |   |-- joydev.ko
|           |   |   |   |-- keyboard
|           |   |   |   |-- misc
|           |   |   |   |-- mouse
|           |   |   |   |-- serio
|           |   |   |   |-- touchscreen
|           |   |   |-- leds
|           |   |   |   |-- trigger
|           |   |   |-- md
|           |   |   |   |-- bcache
|           |   |   |   |-- dm-bio-prison.ko
|           |   |   |   |-- dm-bufio.ko
|           |   |   |   |-- dm-cache-smq.ko
|           |   |   |   |-- dm-cache.ko
|           |   |   |   |-- dm-clone.ko
|           |   |   |   |-- dm-crypt.ko
|           |   |   |   |-- dm-delay.ko
|           |   |   |   |-- dm-ebs.ko
|           |   |   |   |-- dm-era.ko
|           |   |   |   |-- dm-flakey.ko
|           |   |   |   |-- dm-historical-service-time.ko
|           |   |   |   |-- dm-integrity.ko
|           |   |   |   |-- dm-io-affinity.ko
|           |   |   |   |-- dm-log-userspace.ko
|           |   |   |   |-- dm-log-writes.ko
|           |   |   |   |-- dm-log.ko
|           |   |   |   |-- dm-mirror.ko
|           |   |   |   |-- dm-multipath.ko
|           |   |   |   |-- dm-queue-length.ko
|           |   |   |   |-- dm-raid.ko
|           |   |   |   |-- dm-region-hash.ko
|           |   |   |   |-- dm-round-robin.ko
|           |   |   |   |-- dm-service-time.ko
|           |   |   |   |-- dm-snapshot.ko
|           |   |   |   |-- dm-switch.ko
|           |   |   |   |-- dm-thin-pool.ko
|           |   |   |   |-- dm-unstripe.ko
|           |   |   |   |-- dm-verity.ko
|           |   |   |   |-- dm-writecache.ko
|           |   |   |   |-- dm-zero.ko
|           |   |   |   |-- dm-zoned.ko
|           |   |   |   |-- faulty.ko
|           |   |   |   |-- linear.ko
|           |   |   |   |-- md-cluster.ko
|           |   |   |   |-- multipath.ko
|           |   |   |   |-- persistent-data
|           |   |   |   |-- raid0.ko
|           |   |   |   |-- raid1.ko
|           |   |   |   |-- raid10.ko
|           |   |   |   |-- raid456.ko
|           |   |   |-- media
|           |   |   |   |-- cec
|           |   |   |   |-- rc
|           |   |   |-- message
|           |   |   |   |-- fusion
|           |   |   |-- mfd
|           |   |   |   |-- sm501.ko
|           |   |   |-- misc
|           |   |   |   |-- eeprom
|           |   |   |   |-- pvpanic
|           |   |   |   |-- vmw_balloon.ko
|           |   |   |   |-- vmw_vmci
|           |   |   |-- net
|           |   |   |   |-- bonding
|           |   |   |   |-- caif
|           |   |   |   |-- dummy.ko
|           |   |   |   |-- eql.ko
|           |   |   |   |-- ethernet
|           |   |   |   |-- fddi
|           |   |   |   |-- geneve.ko
|           |   |   |   |-- hyperv
|           |   |   |   |-- ifb.ko
|           |   |   |   |-- ipvlan
|           |   |   |   |-- macvlan.ko
|           |   |   |   |-- macvtap.ko
|           |   |   |   |-- mdio.ko
|           |   |   |   |-- mii.ko
|           |   |   |   |-- net_failover.ko
|           |   |   |   |-- netconsole.ko
|           |   |   |   |-- pcs
|           |   |   |   |-- phy
|           |   |   |   |-- ppp
|           |   |   |   |-- slip
|           |   |   |   |-- tap.ko
|           |   |   |   |-- veth.ko
|           |   |   |   |-- virtio_net.ko
|           |   |   |   |-- vmxnet3
|           |   |   |   |-- vxlan
|           |   |   |   |-- wireguard
|           |   |   |   |-- wwan
|           |   |   |   |-- xen-netback
|           |   |   |-- nvme
|           |   |   |   |-- host
|           |   |   |   |-- target
|           |   |   |-- parport
|           |   |   |   |-- parport.ko
|           |   |   |   |-- parport_pc.ko
|           |   |   |-- pci
|           |   |   |   |-- controller
|           |   |   |-- pcmcia
|           |   |   |   |-- pcmcia.ko
|           |   |   |   |-- pcmcia_core.ko
|           |   |   |-- regulator
|           |   |   |   |-- fixed.ko
|           |   |   |-- rpmsg
|           |   |   |   |-- rpmsg_core.ko
|           |   |   |-- scsi
|           |   |   |   |-- BusLogic.ko
|           |   |   |   |-- aacraid
|           |   |   |   |-- device_handler
|           |   |   |   |-- hv_storvsc.ko
|           |   |   |   |-- ipr.ko
|           |   |   |   |-- iscsi_boot_sysfs.ko
|           |   |   |   |-- iscsi_tcp.ko
|           |   |   |   |-- libiscsi.ko
|           |   |   |   |-- libiscsi_tcp.ko
|           |   |   |   |-- libsas
|           |   |   |   |-- lpfc
|           |   |   |   |-- megaraid
|           |   |   |   |-- mpt3sas
|           |   |   |   |-- qla1280.ko
|           |   |   |   |-- qla2xxx
|           |   |   |   |-- raid_class.ko
|           |   |   |   |-- scsi_transport_fc.ko
|           |   |   |   |-- scsi_transport_iscsi.ko
|           |   |   |   |-- scsi_transport_sas.ko
|           |   |   |   |-- scsi_transport_spi.ko
|           |   |   |   |-- virtio_scsi.ko
|           |   |   |   |-- vmw_pvscsi.ko
|           |   |   |-- ssb
|           |   |   |   |-- ssb.ko
|           |   |   |-- target
|           |   |   |   |-- iscsi
|           |   |   |   |-- loopback
|           |   |   |   |-- target_core_file.ko
|           |   |   |   |-- target_core_iblock.ko
|           |   |   |   |-- target_core_mod.ko
|           |   |   |   |-- target_core_pscsi.ko
|           |   |   |   |-- target_core_user.ko
|           |   |   |-- tty
|           |   |   |   |-- serial
|           |   |   |-- uio
|           |   |   |   |-- uio.ko
|           |   |   |   |-- uio_pdrv_genirq.ko
|           |   |   |-- usb
|           |   |   |   |-- host
|           |   |   |   |-- misc
|           |   |   |   |-- storage
|           |   |   |-- vdpa
|           |   |   |   |-- vdpa.ko
|           |   |   |-- vfio
|           |   |   |   |-- mdev
|           |   |   |-- vhost
|           |   |   |   |-- vhost.ko
|           |   |   |   |-- vhost_iotlb.ko
|           |   |   |   |-- vhost_net.ko
|           |   |   |   |-- vhost_scsi.ko
|           |   |   |   |-- vhost_vdpa.ko
|           |   |   |   |-- vhost_vsock.ko
|           |   |   |   |-- vringh.ko
|           |   |   |-- video
|           |   |   |   |-- fbdev
|           |   |   |   |-- vgastate.ko
|           |   |   |-- virt
|           |   |   |   |-- vboxguest
|           |   |   |-- virtio
|           |   |   |   |-- virtio_dma_buf.ko
|           |   |   |   |-- virtio_input.ko
|           |   |   |   |-- virtio_mem.ko
|           |   |   |   |-- virtio_vdpa.ko
|           |   |   |-- watchdog
|           |   |   |   |-- softdog.ko
|           |   |   |-- xen
|           |   |       |-- pvcalls-front.ko
|           |   |       |-- xen-evtchn.ko
|           |   |       |-- xen-front-pgdir-shbuf.ko
|           |   |       |-- xen-gntalloc.ko
|           |   |       |-- xen-gntdev.ko
|           |   |       |-- xen-pciback
|           |   |       |-- xen-privcmd.ko
|           |   |       |-- xen-scsiback.ko
|           |   |       |-- xenfs
|           |   |-- fs
|           |   |   |-- 9p
|           |   |   |   |-- 9p.ko
|           |   |   |-- autofs
|           |   |   |   |-- autofs4.ko
|           |   |   |-- binfmt_misc.ko
|           |   |   |-- btrfs
|           |   |   |   |-- btrfs.ko
|           |   |   |-- cachefiles
|           |   |   |   |-- cachefiles.ko
|           |   |   |-- ceph
|           |   |   |   |-- ceph.ko
|           |   |   |-- cifs
|           |   |   |   |-- cifs.ko
|           |   |   |-- dlm
|           |   |   |   |-- dlm.ko
|           |   |   |-- erofs
|           |   |   |   |-- erofs.ko
|           |   |   |-- fat
|           |   |   |   |-- msdos.ko
|           |   |   |-- fscache
|           |   |   |   |-- fscache.ko
|           |   |   |-- fuse
|           |   |   |   |-- cuse.ko
|           |   |   |   |-- virtiofs.ko
|           |   |   |-- isofs
|           |   |   |   |-- isofs.ko
|           |   |   |-- lockd
|           |   |   |   |-- lockd.ko
|           |   |   |-- netfs
|           |   |   |   |-- netfs.ko
|           |   |   |-- nfs
|           |   |   |   |-- blocklayout
|           |   |   |   |-- filelayout
|           |   |   |   |-- flexfilelayout
|           |   |   |   |-- nfs.ko
|           |   |   |   |-- nfsv2.ko
|           |   |   |   |-- nfsv3.ko
|           |   |   |   |-- nfsv4.ko
|           |   |   |-- nfs_common
|           |   |   |   |-- grace.ko
|           |   |   |   |-- nfs_acl.ko
|           |   |   |-- nfsd
|           |   |   |   |-- nfsd.ko
|           |   |   |-- nls
|           |   |   |   |-- nls_iso8859-1.ko
|           |   |   |-- overlayfs
|           |   |   |   |-- overlay.ko
|           |   |   |-- shiftfs.ko
|           |   |   |-- smbfs_common
|           |   |   |   |-- cifs_arc4.ko
|           |   |   |   |-- cifs_md4.ko
|           |   |   |-- udf
|           |   |   |   |-- udf.ko
|           |   |   |-- ufs
|           |   |   |   |-- ufs.ko
|           |   |   |-- vboxsf
|           |   |   |   |-- vboxsf.ko
|           |   |   |-- xfs
|           |   |       |-- xfs.ko
|           |   |-- lib
|           |   |   |-- 842
|           |   |   |   |-- 842_compress.ko
|           |   |   |   |-- 842_decompress.ko
|           |   |   |-- bch.ko
|           |   |   |-- crc-itu-t.ko
|           |   |   |-- crc4.ko
|           |   |   |-- crc64.ko
|           |   |   |-- crc7.ko
|           |   |   |-- crc8.ko
|           |   |   |-- crypto
|           |   |   |   |-- libarc4.ko
|           |   |   |   |-- libchacha.ko
|           |   |   |   |-- libchacha20poly1305.ko
|           |   |   |   |-- libcurve25519-generic.ko
|           |   |   |   |-- libcurve25519.ko
|           |   |   |   |-- libdes.ko
|           |   |   |   |-- libpoly1305.ko
|           |   |   |   |-- libsm4.ko
|           |   |   |-- libcrc32c.ko
|           |   |   |-- lru_cache.ko
|           |   |   |-- lz4
|           |   |   |   |-- lz4_compress.ko
|           |   |   |   |-- lz4hc_compress.ko
|           |   |   |-- math
|           |   |   |   |-- cordic.ko
|           |   |   |-- memory-notifier-error-inject.ko
|           |   |   |-- notifier-error-inject.ko
|           |   |   |-- objagg.ko
|           |   |   |-- parman.ko
|           |   |   |-- pm-notifier-error-inject.ko
|           |   |   |-- raid6
|           |   |   |   |-- raid6_pq.ko
|           |   |   |-- reed_solomon
|           |   |   |   |-- reed_solomon.ko
|           |   |   |-- test_blackhole_dev.ko
|           |   |   |-- test_bpf.ko
|           |   |   |-- ts_bm.ko
|           |   |   |-- ts_fsm.ko
|           |   |   |-- ts_kmp.ko
|           |   |   |-- xz
|           |   |   |   |-- xz_dec_test.ko
|           |   |   |-- zstd
|           |   |       |-- zstd_compress.ko
|           |   |-- net
|           |   |   |-- 6lowpan
|           |   |   |   |-- 6lowpan.ko
|           |   |   |   |-- nhc_dest.ko
|           |   |   |   |-- nhc_fragment.ko
|           |   |   |   |-- nhc_hop.ko
|           |   |   |   |-- nhc_ipv6.ko
|           |   |   |   |-- nhc_mobility.ko
|           |   |   |   |-- nhc_routing.ko
|           |   |   |   |-- nhc_udp.ko
|           |   |   |-- 802
|           |   |   |   |-- garp.ko
|           |   |   |   |-- mrp.ko
|           |   |   |   |-- p8022.ko
|           |   |   |   |-- psnap.ko
|           |   |   |   |-- stp.ko
|           |   |   |-- 8021q
|           |   |   |   |-- 8021q.ko
|           |   |   |-- 9p
|           |   |   |   |-- 9pnet.ko
|           |   |   |   |-- 9pnet_rdma.ko
|           |   |   |   |-- 9pnet_virtio.ko
|           |   |   |   |-- 9pnet_xen.ko
|           |   |   |-- appletalk
|           |   |   |   |-- appletalk.ko
|           |   |   |-- atm
|           |   |   |   |-- atm.ko
|           |   |   |   |-- br2684.ko
|           |   |   |   |-- clip.ko
|           |   |   |   |-- lec.ko
|           |   |   |   |-- mpoa.ko
|           |   |   |   |-- pppoatm.ko
|           |   |   |-- ax25
|           |   |   |   |-- ax25.ko
|           |   |   |-- bpfilter
|           |   |   |   |-- bpfilter.ko
|           |   |   |-- bridge
|           |   |   |   |-- br_netfilter.ko
|           |   |   |   |-- bridge.ko
|           |   |   |   |-- netfilter
|           |   |   |-- can
|           |   |   |   |-- can-bcm.ko
|           |   |   |   |-- can-gw.ko
|           |   |   |   |-- can-isotp.ko
|           |   |   |   |-- can-raw.ko
|           |   |   |   |-- can.ko
|           |   |   |   |-- j1939
|           |   |   |-- ceph
|           |   |   |   |-- libceph.ko
|           |   |   |-- core
|           |   |   |   |-- failover.ko
|           |   |   |   |-- pktgen.ko
|           |   |   |-- dccp
|           |   |   |   |-- dccp.ko
|           |   |   |   |-- dccp_diag.ko
|           |   |   |   |-- dccp_ipv4.ko
|           |   |   |   |-- dccp_ipv6.ko
|           |   |   |-- ieee802154
|           |   |   |   |-- 6lowpan
|           |   |   |   |-- ieee802154.ko
|           |   |   |   |-- ieee802154_socket.ko
|           |   |   |-- ipv4
|           |   |   |   |-- ah4.ko
|           |   |   |   |-- esp4.ko
|           |   |   |   |-- esp4_offload.ko
|           |   |   |   |-- fou.ko
|           |   |   |   |-- gre.ko
|           |   |   |   |-- inet_diag.ko
|           |   |   |   |-- ip_gre.ko
|           |   |   |   |-- ip_tunnel.ko
|           |   |   |   |-- ip_vti.ko
|           |   |   |   |-- ipcomp.ko
|           |   |   |   |-- ipip.ko
|           |   |   |   |-- netfilter
|           |   |   |   |-- raw_diag.ko
|           |   |   |   |-- tcp_bbr.ko
|           |   |   |   |-- tcp_bic.ko
|           |   |   |   |-- tcp_cdg.ko
|           |   |   |   |-- tcp_dctcp.ko
|           |   |   |   |-- tcp_diag.ko
|           |   |   |   |-- tcp_highspeed.ko
|           |   |   |   |-- tcp_htcp.ko
|           |   |   |   |-- tcp_hybla.ko
|           |   |   |   |-- tcp_illinois.ko
|           |   |   |   |-- tcp_lp.ko
|           |   |   |   |-- tcp_nv.ko
|           |   |   |   |-- tcp_scalable.ko
|           |   |   |   |-- tcp_vegas.ko
|           |   |   |   |-- tcp_veno.ko
|           |   |   |   |-- tcp_westwood.ko
|           |   |   |   |-- tcp_yeah.ko
|           |   |   |   |-- tunnel4.ko
|           |   |   |   |-- udp_diag.ko
|           |   |   |   |-- udp_tunnel.ko
|           |   |   |   |-- xfrm4_tunnel.ko
|           |   |   |-- ipv6
|           |   |   |   |-- ah6.ko
|           |   |   |   |-- esp6.ko
|           |   |   |   |-- esp6_offload.ko
|           |   |   |   |-- fou6.ko
|           |   |   |   |-- ila
|           |   |   |   |-- ip6_gre.ko
|           |   |   |   |-- ip6_tunnel.ko
|           |   |   |   |-- ip6_udp_tunnel.ko
|           |   |   |   |-- ip6_vti.ko
|           |   |   |   |-- ipcomp6.ko
|           |   |   |   |-- mip6.ko
|           |   |   |   |-- netfilter
|           |   |   |   |-- sit.ko
|           |   |   |   |-- tunnel6.ko
|           |   |   |   |-- xfrm6_tunnel.ko
|           |   |   |-- key
|           |   |   |   |-- af_key.ko
|           |   |   |-- lapb
|           |   |   |   |-- lapb.ko
|           |   |   |-- llc
|           |   |   |   |-- llc.ko
|           |   |   |   |-- llc2.ko
|           |   |   |-- netfilter
|           |   |   |   |-- ipset
|           |   |   |   |-- ipvs
|           |   |   |   |-- nf_conncount.ko
|           |   |   |   |-- nf_conntrack.ko
|           |   |   |   |-- nf_conntrack_amanda.ko
|           |   |   |   |-- nf_conntrack_broadcast.ko
|           |   |   |   |-- nf_conntrack_ftp.ko
|           |   |   |   |-- nf_conntrack_h323.ko
|           |   |   |   |-- nf_conntrack_irc.ko
|           |   |   |   |-- nf_conntrack_netbios_ns.ko
|           |   |   |   |-- nf_conntrack_netlink.ko
|           |   |   |   |-- nf_conntrack_pptp.ko
|           |   |   |   |-- nf_conntrack_sane.ko
|           |   |   |   |-- nf_conntrack_sip.ko
|           |   |   |   |-- nf_conntrack_snmp.ko
|           |   |   |   |-- nf_conntrack_tftp.ko
|           |   |   |   |-- nf_dup_netdev.ko
|           |   |   |   |-- nf_flow_table.ko
|           |   |   |   |-- nf_flow_table_inet.ko
|           |   |   |   |-- nf_log_syslog.ko
|           |   |   |   |-- nf_nat.ko
|           |   |   |   |-- nf_nat_amanda.ko
|           |   |   |   |-- nf_nat_ftp.ko
|           |   |   |   |-- nf_nat_irc.ko
|           |   |   |   |-- nf_nat_sip.ko
|           |   |   |   |-- nf_nat_tftp.ko
|           |   |   |   |-- nf_synproxy_core.ko
|           |   |   |   |-- nf_tables.ko
|           |   |   |   |-- nfnetlink.ko
|           |   |   |   |-- nfnetlink_acct.ko
|           |   |   |   |-- nfnetlink_cthelper.ko
|           |   |   |   |-- nfnetlink_cttimeout.ko
|           |   |   |   |-- nfnetlink_hook.ko
|           |   |   |   |-- nfnetlink_log.ko
|           |   |   |   |-- nfnetlink_osf.ko
|           |   |   |   |-- nfnetlink_queue.ko
|           |   |   |   |-- nft_chain_nat.ko
|           |   |   |   |-- nft_compat.ko
|           |   |   |   |-- nft_connlimit.ko
|           |   |   |   |-- nft_counter.ko
|           |   |   |   |-- nft_ct.ko
|           |   |   |   |-- nft_dup_netdev.ko
|           |   |   |   |-- nft_fib.ko
|           |   |   |   |-- nft_fib_inet.ko
|           |   |   |   |-- nft_fib_netdev.ko
|           |   |   |   |-- nft_flow_offload.ko
|           |   |   |   |-- nft_fwd_netdev.ko
|           |   |   |   |-- nft_hash.ko
|           |   |   |   |-- nft_limit.ko
|           |   |   |   |-- nft_log.ko
|           |   |   |   |-- nft_masq.ko
|           |   |   |   |-- nft_nat.ko
|           |   |   |   |-- nft_numgen.ko
|           |   |   |   |-- nft_objref.ko
|           |   |   |   |-- nft_osf.ko
|           |   |   |   |-- nft_queue.ko
|           |   |   |   |-- nft_quota.ko
|           |   |   |   |-- nft_redir.ko
|           |   |   |   |-- nft_reject.ko
|           |   |   |   |-- nft_reject_inet.ko
|           |   |   |   |-- nft_reject_netdev.ko
|           |   |   |   |-- nft_socket.ko
|           |   |   |   |-- nft_synproxy.ko
|           |   |   |   |-- nft_tproxy.ko
|           |   |   |   |-- nft_tunnel.ko
|           |   |   |   |-- nft_xfrm.ko
|           |   |   |   |-- x_tables.ko
|           |   |   |   |-- xt_AUDIT.ko
|           |   |   |   |-- xt_CHECKSUM.ko
|           |   |   |   |-- xt_CLASSIFY.ko
|           |   |   |   |-- xt_CONNSECMARK.ko
|           |   |   |   |-- xt_CT.ko
|           |   |   |   |-- xt_DSCP.ko
|           |   |   |   |-- xt_HL.ko
|           |   |   |   |-- xt_HMARK.ko
|           |   |   |   |-- xt_IDLETIMER.ko
|           |   |   |   |-- xt_LED.ko
|           |   |   |   |-- xt_LOG.ko
|           |   |   |   |-- xt_MASQUERADE.ko
|           |   |   |   |-- xt_NETMAP.ko
|           |   |   |   |-- xt_NFLOG.ko
|           |   |   |   |-- xt_NFQUEUE.ko
|           |   |   |   |-- xt_RATEEST.ko
|           |   |   |   |-- xt_REDIRECT.ko
|           |   |   |   |-- xt_SECMARK.ko
|           |   |   |   |-- xt_TCPMSS.ko
|           |   |   |   |-- xt_TCPOPTSTRIP.ko
|           |   |   |   |-- xt_TEE.ko
|           |   |   |   |-- xt_TPROXY.ko
|           |   |   |   |-- xt_TRACE.ko
|           |   |   |   |-- xt_addrtype.ko
|           |   |   |   |-- xt_bpf.ko
|           |   |   |   |-- xt_cgroup.ko
|           |   |   |   |-- xt_cluster.ko
|           |   |   |   |-- xt_comment.ko
|           |   |   |   |-- xt_connbytes.ko
|           |   |   |   |-- xt_connlabel.ko
|           |   |   |   |-- xt_connlimit.ko
|           |   |   |   |-- xt_connmark.ko
|           |   |   |   |-- xt_conntrack.ko
|           |   |   |   |-- xt_cpu.ko
|           |   |   |   |-- xt_dccp.ko
|           |   |   |   |-- xt_devgroup.ko
|           |   |   |   |-- xt_dscp.ko
|           |   |   |   |-- xt_ecn.ko
|           |   |   |   |-- xt_esp.ko
|           |   |   |   |-- xt_hashlimit.ko
|           |   |   |   |-- xt_helper.ko
|           |   |   |   |-- xt_hl.ko
|           |   |   |   |-- xt_ipcomp.ko
|           |   |   |   |-- xt_iprange.ko
|           |   |   |   |-- xt_ipvs.ko
|           |   |   |   |-- xt_l2tp.ko
|           |   |   |   |-- xt_length.ko
|           |   |   |   |-- xt_limit.ko
|           |   |   |   |-- xt_mac.ko
|           |   |   |   |-- xt_mark.ko
|           |   |   |   |-- xt_multiport.ko
|           |   |   |   |-- xt_nat.ko
|           |   |   |   |-- xt_nfacct.ko
|           |   |   |   |-- xt_osf.ko
|           |   |   |   |-- xt_owner.ko
|           |   |   |   |-- xt_physdev.ko
|           |   |   |   |-- xt_pkttype.ko
|           |   |   |   |-- xt_policy.ko
|           |   |   |   |-- xt_quota.ko
|           |   |   |   |-- xt_rateest.ko
|           |   |   |   |-- xt_realm.ko
|           |   |   |   |-- xt_recent.ko
|           |   |   |   |-- xt_sctp.ko
|           |   |   |   |-- xt_set.ko
|           |   |   |   |-- xt_socket.ko
|           |   |   |   |-- xt_state.ko
|           |   |   |   |-- xt_statistic.ko
|           |   |   |   |-- xt_string.ko
|           |   |   |   |-- xt_tcpmss.ko
|           |   |   |   |-- xt_tcpudp.ko
|           |   |   |   |-- xt_time.ko
|           |   |   |   |-- xt_u32.ko
|           |   |   |-- netlink
|           |   |   |   |-- netlink_diag.ko
|           |   |   |-- netrom
|           |   |   |   |-- netrom.ko
|           |   |   |-- nsh
|           |   |   |   |-- nsh.ko
|           |   |   |-- openvswitch
|           |   |   |   |-- openvswitch.ko
|           |   |   |   |-- vport-geneve.ko
|           |   |   |   |-- vport-gre.ko
|           |   |   |   |-- vport-vxlan.ko
|           |   |   |-- packet
|           |   |   |   |-- af_packet_diag.ko
|           |   |   |-- phonet
|           |   |   |   |-- phonet.ko
|           |   |   |   |-- pn_pep.ko
|           |   |   |-- psample
|           |   |   |   |-- psample.ko
|           |   |   |-- rose
|           |   |   |   |-- rose.ko
|           |   |   |-- rxrpc
|           |   |   |   |-- rxrpc.ko
|           |   |   |-- sched
|           |   |   |   |-- act_bpf.ko
|           |   |   |   |-- act_connmark.ko
|           |   |   |   |-- act_csum.ko
|           |   |   |   |-- act_ct.ko
|           |   |   |   |-- act_ctinfo.ko
|           |   |   |   |-- act_gact.ko
|           |   |   |   |-- act_gate.ko
|           |   |   |   |-- act_ipt.ko
|           |   |   |   |-- act_mirred.ko
|           |   |   |   |-- act_mpls.ko
|           |   |   |   |-- act_nat.ko
|           |   |   |   |-- act_pedit.ko
|           |   |   |   |-- act_police.ko
|           |   |   |   |-- act_sample.ko
|           |   |   |   |-- act_simple.ko
|           |   |   |   |-- act_skbedit.ko
|           |   |   |   |-- act_skbmod.ko
|           |   |   |   |-- act_tunnel_key.ko
|           |   |   |   |-- act_vlan.ko
|           |   |   |   |-- cls_basic.ko
|           |   |   |   |-- cls_bpf.ko
|           |   |   |   |-- cls_cgroup.ko
|           |   |   |   |-- cls_flow.ko
|           |   |   |   |-- cls_flower.ko
|           |   |   |   |-- cls_fw.ko
|           |   |   |   |-- cls_matchall.ko
|           |   |   |   |-- cls_route.ko
|           |   |   |   |-- cls_u32.ko
|           |   |   |   |-- em_canid.ko
|           |   |   |   |-- em_cmp.ko
|           |   |   |   |-- em_ipset.ko
|           |   |   |   |-- em_ipt.ko
|           |   |   |   |-- em_meta.ko
|           |   |   |   |-- em_nbyte.ko
|           |   |   |   |-- em_text.ko
|           |   |   |   |-- em_u32.ko
|           |   |   |   |-- sch_cake.ko
|           |   |   |   |-- sch_cbs.ko
|           |   |   |   |-- sch_choke.ko
|           |   |   |   |-- sch_codel.ko
|           |   |   |   |-- sch_drr.ko
|           |   |   |   |-- sch_etf.ko
|           |   |   |   |-- sch_ets.ko
|           |   |   |   |-- sch_fq.ko
|           |   |   |   |-- sch_fq_codel.ko
|           |   |   |   |-- sch_fq_pie.ko
|           |   |   |   |-- sch_gred.ko
|           |   |   |   |-- sch_hfsc.ko
|           |   |   |   |-- sch_hhf.ko
|           |   |   |   |-- sch_htb.ko
|           |   |   |   |-- sch_ingress.ko
|           |   |   |   |-- sch_mqprio.ko
|           |   |   |   |-- sch_multiq.ko
|           |   |   |   |-- sch_netem.ko
|           |   |   |   |-- sch_pie.ko
|           |   |   |   |-- sch_plug.ko
|           |   |   |   |-- sch_prio.ko
|           |   |   |   |-- sch_qfq.ko
|           |   |   |   |-- sch_red.ko
|           |   |   |   |-- sch_sfb.ko
|           |   |   |   |-- sch_sfq.ko
|           |   |   |   |-- sch_skbprio.ko
|           |   |   |   |-- sch_taprio.ko
|           |   |   |   |-- sch_tbf.ko
|           |   |   |   |-- sch_teql.ko
|           |   |   |-- sctp
|           |   |   |   |-- sctp.ko
|           |   |   |   |-- sctp_diag.ko
|           |   |   |-- sunrpc
|           |   |   |   |-- auth_gss
|           |   |   |   |-- sunrpc.ko
|           |   |   |-- tipc
|           |   |   |   |-- diag.ko
|           |   |   |   |-- tipc.ko
|           |   |   |-- tls
|           |   |   |   |-- tls.ko
|           |   |   |-- unix
|           |   |   |   |-- unix_diag.ko
|           |   |   |-- vmw_vsock
|           |   |   |   |-- hv_sock.ko
|           |   |   |   |-- vmw_vsock_virtio_transport.ko
|           |   |   |   |-- vmw_vsock_virtio_transport_common.ko
|           |   |   |   |-- vmw_vsock_vmci_transport.ko
|           |   |   |   |-- vsock.ko
|           |   |   |   |-- vsock_diag.ko
|           |   |   |   |-- vsock_loopback.ko
|           |   |   |-- x25
|           |   |   |   |-- x25.ko
|           |   |   |-- xfrm
|           |   |       |-- xfrm_algo.ko
|           |   |       |-- xfrm_compat.ko
|           |   |       |-- xfrm_interface.ko
|           |   |       |-- xfrm_ipcomp.ko
|           |   |       |-- xfrm_user.ko
|           |   |-- sound
|           |   |   |-- core
|           |   |   |   |-- seq
|           |   |   |   |-- snd-compress.ko
|           |   |   |   |-- snd-ctl-led.ko
|           |   |   |   |-- snd-hrtimer.ko
|           |   |   |   |-- snd-hwdep.ko
|           |   |   |   |-- snd-pcm-dmaengine.ko
|           |   |   |   |-- snd-pcm.ko
|           |   |   |   |-- snd-rawmidi.ko
|           |   |   |   |-- snd-seq-device.ko
|           |   |   |   |-- snd-timer.ko
|           |   |   |   |-- snd.ko
|           |   |   |-- drivers
|           |   |   |   |-- pcsp
|           |   |   |-- pci
|           |   |   |   |-- snd-ens1370.ko
|           |   |   |-- soundcore.ko
|           |   |-- ubuntu
|           |   |   |-- ubuntu-host
|           |   |       |-- ubuntu-host.ko
|           |   |-- v4l2loopback
|           |   |   |-- v4l2loopback.ko
|           |   |-- zfs
|           |       |-- icp.ko
|           |       |-- spl.ko
|           |       |-- zavl.ko
|           |       |-- zcommon.ko
|           |       |-- zfs.ko
|           |       |-- zlua.ko
|           |       |-- znvpair.ko
|           |       |-- zunicode.ko
|           |       |-- zzstd.ko
|           |-- modules.builtin
|           |-- modules.builtin.modinfo
|           |-- modules.order
|           |-- vdso
|               |-- vdso32.so
|               |-- vdso64.so
|               |-- vdsox32.so
|-- linux-image-5.15.0-173-generic_5.15.0-173.183_amd64.deb
|-- linux-modules-5.15.0-173-generic_5.15.0-173.183_amd64.deb
|-- usr
    |-- lib
    |   |-- linux
    |       |-- triggers
    |-- share
        |-- doc
            |-- linux-image-5.15.0-173-generic
            |   |-- changelog.Debian.gz
            |   |-- copyright
            |-- linux-image-unsigned-5.15.0-173-generic
            |-- linux-modules-5.15.0-173-generic
                |-- changelog.Debian.gz
                |-- copyright

227 directories, 649 files
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# ls lib/modules/5.15.0-173-generic/modules.*
lib/modules/5.15.0-173-generic/modules.builtin  lib/modules/5.15.0-173-generic/modules.builtin.modinfo  lib/modules/5.15.0-173-generic/modules.order
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# ls lib/modules/5.15.0-173-generic/kernel
arch  crypto  drivers  fs  lib  net  sound  ubuntu  v4l2loopback  zfs
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# ls -1 boot/vmlinuz-*
boot/vmlinuz-5.15.0-173-generic
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# ls -1 boot/vmlinuz-5.15.0-173-generic | sed 's/\/boot\/vmlinuz-//g' - > version
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY# cat version
boot/vmlinuz-5.15.0-173-generic
root@a3da90d3741a:/tmp/tmp.3sZuV0uFVY#




root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# mv lib/modules/5.15.0-173-generic/modules.builtin lib/modules/5.15.0-173-generic/modules.builtin.modinfo lib/modules/5.15.0-173-generic/modules.order /lib/modules/5.15.0-173-generic
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# tree -a /lib/modules/5.15.0-173-generic
/lib/modules/5.15.0-173-generic
|-- build -> /usr/src/linux-headers-5.15.0-173-generic
|-- modules.builtin
|-- modules.builtin.modinfo
|-- modules.order

1 directory, 3 files
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY#

root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# mv lib/modules/5.15.0-173-generic/kernel /lib/modules/5.15.0-173-generic
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# tree -L 3 /lib/modules/5.15.0-173-generic
/lib/modules/5.15.0-173-generic
|-- build -> /usr/src/linux-headers-5.15.0-173-generic
|-- kernel
|   |-- arch
|   |   |-- x86
|   |-- crypto
|   |   |-- 842.ko
|   |   |-- adiantum.ko
|   |   |-- aegis128.ko
|   |   |-- aes_ti.ko
|   |   |-- af_alg.ko
|   |   |-- algif_aead.ko
|   |   |-- algif_hash.ko
|   |   |-- algif_rng.ko
|   |   |-- algif_skcipher.ko
|   |   |-- ansi_cprng.ko
|   |   |-- asymmetric_keys
|   |   |-- async_tx
|   |   |-- authenc.ko
|   |   |-- authencesn.ko
|   |   |-- blake2b_generic.ko
|   |   |-- blowfish_common.ko
|   |   |-- blowfish_generic.ko
|   |   |-- camellia_generic.ko
|   |   |-- cast5_generic.ko
|   |   |-- cast6_generic.ko
|   |   |-- cast_common.ko
|   |   |-- ccm.ko
|   |   |-- cfb.ko
|   |   |-- chacha20poly1305.ko
|   |   |-- chacha_generic.ko
|   |   |-- cmac.ko
|   |   |-- crc32_generic.ko
|   |   |-- cryptd.ko
|   |   |-- crypto_engine.ko
|   |   |-- crypto_simd.ko
|   |   |-- crypto_user.ko
|   |   |-- curve25519-generic.ko
|   |   |-- des_generic.ko
|   |   |-- ecc.ko
|   |   |-- ecdh_generic.ko
|   |   |-- ecdsa_generic.ko
|   |   |-- echainiv.ko
|   |   |-- ecrdsa_generic.ko
|   |   |-- essiv.ko
|   |   |-- fcrypt.ko
|   |   |-- keywrap.ko
|   |   |-- lrw.ko
|   |   |-- lz4.ko
|   |   |-- lz4hc.ko
|   |   |-- md4.ko
|   |   |-- michael_mic.ko
|   |   |-- nhpoly1305.ko
|   |   |-- ofb.ko
|   |   |-- pcbc.ko
|   |   |-- pcrypt.ko
|   |   |-- poly1305_generic.ko
|   |   |-- rmd160.ko
|   |   |-- serpent_generic.ko
|   |   |-- sha3_generic.ko
|   |   |-- sm2_generic.ko
|   |   |-- sm3_generic.ko
|   |   |-- sm4_generic.ko
|   |   |-- streebog_generic.ko
|   |   |-- tcrypt.ko
|   |   |-- twofish_common.ko
|   |   |-- twofish_generic.ko
|   |   |-- vmac.ko
|   |   |-- wp512.ko
|   |   |-- xcbc.ko
|   |   |-- xor.ko
|   |   |-- xxhash_generic.ko
|   |   |-- zstd.ko
|   |-- drivers
|   |   |-- acpi
|   |   |-- ata
|   |   |-- bcma
|   |   |-- block
|   |   |-- bus
|   |   |-- char
|   |   |-- crypto
|   |   |-- dca
|   |   |-- firmware
|   |   |-- gpu
|   |   |-- hid
|   |   |-- hv
|   |   |-- i2c
|   |   |-- infiniband
|   |   |-- input
|   |   |-- leds
|   |   |-- md
|   |   |-- media
|   |   |-- message
|   |   |-- mfd
|   |   |-- misc
|   |   |-- net
|   |   |-- nvme
|   |   |-- parport
|   |   |-- pci
|   |   |-- pcmcia
|   |   |-- regulator
|   |   |-- rpmsg
|   |   |-- scsi
|   |   |-- ssb
|   |   |-- target
|   |   |-- tty
|   |   |-- uio
|   |   |-- usb
|   |   |-- vdpa
|   |   |-- vfio
|   |   |-- vhost
|   |   |-- video
|   |   |-- virt
|   |   |-- virtio
|   |   |-- watchdog
|   |   |-- xen
|   |-- fs
|   |   |-- 9p
|   |   |-- autofs
|   |   |-- binfmt_misc.ko
|   |   |-- btrfs
|   |   |-- cachefiles
|   |   |-- ceph
|   |   |-- cifs
|   |   |-- dlm
|   |   |-- erofs
|   |   |-- fat
|   |   |-- fscache
|   |   |-- fuse
|   |   |-- isofs
|   |   |-- lockd
|   |   |-- netfs
|   |   |-- nfs
|   |   |-- nfs_common
|   |   |-- nfsd
|   |   |-- nls
|   |   |-- overlayfs
|   |   |-- shiftfs.ko
|   |   |-- smbfs_common
|   |   |-- udf
|   |   |-- ufs
|   |   |-- vboxsf
|   |   |-- xfs
|   |-- lib
|   |   |-- 842
|   |   |-- bch.ko
|   |   |-- crc-itu-t.ko
|   |   |-- crc4.ko
|   |   |-- crc64.ko
|   |   |-- crc7.ko
|   |   |-- crc8.ko
|   |   |-- crypto
|   |   |-- libcrc32c.ko
|   |   |-- lru_cache.ko
|   |   |-- lz4
|   |   |-- math
|   |   |-- memory-notifier-error-inject.ko
|   |   |-- notifier-error-inject.ko
|   |   |-- objagg.ko
|   |   |-- parman.ko
|   |   |-- pm-notifier-error-inject.ko
|   |   |-- raid6
|   |   |-- reed_solomon
|   |   |-- test_blackhole_dev.ko
|   |   |-- test_bpf.ko
|   |   |-- ts_bm.ko
|   |   |-- ts_fsm.ko
|   |   |-- ts_kmp.ko
|   |   |-- xz
|   |   |-- zstd
|   |-- net
|   |   |-- 6lowpan
|   |   |-- 802
|   |   |-- 8021q
|   |   |-- 9p
|   |   |-- appletalk
|   |   |-- atm
|   |   |-- ax25
|   |   |-- bpfilter
|   |   |-- bridge
|   |   |-- can
|   |   |-- ceph
|   |   |-- core
|   |   |-- dccp
|   |   |-- ieee802154
|   |   |-- ipv4
|   |   |-- ipv6
|   |   |-- key
|   |   |-- lapb
|   |   |-- llc
|   |   |-- netfilter
|   |   |-- netlink
|   |   |-- netrom
|   |   |-- nsh
|   |   |-- openvswitch
|   |   |-- packet
|   |   |-- phonet
|   |   |-- psample
|   |   |-- rose
|   |   |-- rxrpc
|   |   |-- sched
|   |   |-- sctp
|   |   |-- sunrpc
|   |   |-- tipc
|   |   |-- tls
|   |   |-- unix
|   |   |-- vmw_vsock
|   |   |-- x25
|   |   |-- xfrm
|   |-- sound
|   |   |-- core
|   |   |-- drivers
|   |   |-- pci
|   |   |-- soundcore.ko
|   |-- ubuntu
|   |   |-- ubuntu-host
|   |-- v4l2loopback
|   |   |-- v4l2loopback.ko
|   |-- zfs
|       |-- icp.ko
|       |-- spl.ko
|       |-- zavl.ko
|       |-- zcommon.ko
|       |-- zfs.ko
|       |-- zlua.ko
|       |-- znvpair.ko
|       |-- zunicode.ko
|       |-- zzstd.ko
|-- modules.builtin
|-- modules.builtin.modinfo
|-- modules.order

131 directories, 99 files
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY#
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# ls -1 boot/vmlinuz-5.15.0-173-generic | sed 's/\/boot\/vmlinuz-//g' - > version
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# mv version /lib/modules/5.15.0-173-generic/proc
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY# cat /lib/modules/5.15.0-173-generic/proc
boot/vmlinuz-5.15.0-173-generic
root@00ba75e368e6:/tmp/tmp.3sZuV0uFVY#

```
