#!/bin/bash

brand="`echo $0 | cut -f2 -d'/'`"
model="`echo $0 | cut -f3 -d'/'`"

#cd ../../../..
cd system/core
patch -p1 < ../../device/$brand/$model/patches_mtk/system_core/0001-system_core.patch
patch -p1 < ../../device/$brand/$model/patches_mtk/system_core/0002-Prevent-spamming-audio.patch
patch -p1 < ../../device/$brand/$model/patches_mtk/system_core/0003-healthd-correctly-report-battery-voltage-on-MTK-kernels.patch
patch -p1 < ../../device/$brand/$model/patches_mtk/system_core/0004_system_core_rootdir_ueventd.patch
patch -p1 < ../../device/$brand/$model/patches_mtk/system_core/0005_system_core_fingerprint.patch
cd ../..
cd bionic
patch -p1 < ../device/$brand/$model/patches_mtk/bionic.patch
cd ..
cd system/sepolicy
patch -p1 < ../../device/$brand/$model/patches_mtk/system_sepolicy.patch
cd ../..
cd system/netd
patch -p1 < ../../device/$brand/$model/patches_mtk/system_netd.patch
cd ../..

### DO NOT USE SYSTEM BLUETOOTH PATCH
#cd system/bt
#patch -p1 < ../../device/$brand/$model/patches_mtk/system_bt.patch
#cd ../..
### DO NOT USE SYSTEM BLUETOOTH PATCH

cd frameworks/av
patch -p1 < ../../device/$brand/$model/patches_mtk/frameworks_av.patch
cd ..
cd native
patch -p1 < ../../device/$brand/$model/patches_mtk/frameworks_native.patch
cd ..
cd base
patch -p1 < ../../device/$brand/$model/patches_mtk/framework_base/0001-frameworks_base.patch
patch -p1 < ../../device/$brand/$model/patches_mtk/framework_base/0002-Fix-Minior-Bugs.patch
patch -p1 < ../../device/$brand/$model/patches_mtk/framework_base/0003-frameworks_base_signature_spoofing.patch
git clean -f -d
cd ..
cd opt/telephony
patch -p1 < ../../../device/$brand/$model/patches_mtk/frameworks_opt_telephony.patch
cd ../../..
cd packages/apps/Snap
patch -p1 < ../../../device/$brand/$model/patches_mtk/snap.patch
cd ..
cd FMRadio
patch -p1 < ../../../device/$brand/$model/patches_mtk/fmradio.patch
cd ../../..
cd external/wpa_supplicant_8
patch -p1 < ../../device/$brand/$model/patches_mtk/external_wpa_supplicant_8/0001-Ignore-fake-nvram-wifi.patch
cd ../..
cd packages/apps/Settings
patch -p1 < ../../../device/$brand/$model/patches_mtk/settings.patch
git clean -f -d
cd ../../..

# EngineerMode Patches
#cd frameworks/av
#patch -p1 < ../../device/$brand/$model/patches_mtk/engineermode/1-em.patch
#cd ../..
#cd frameworks/base
#patch -p1 < ../../device/$brand/$model/patches_mtk/engineermode/0002-em.patch
#cd ../..
