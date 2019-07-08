#!/bin/bash
#cd ../../../..
cd system/core
git reset --hard && git clean -fd
cd ../..
cd bionic
git reset --hard && git clean -fd
cd ..
cd system/sepolicy
git reset --hard && git clean -fd
cd ../..
cd system/bt
git reset --hard && git clean -fd
cd ../..
cd system/netd
git reset --hard && git clean -fd
cd ../..
cd frameworks/av
git reset --hard && git clean -fd
cd ..
cd native
git reset --hard && git clean -fd
cd ..
cd base
git reset --hard && git clean -fd
cd ..
cd opt/telephony
git reset --hard && git clean -fd
cd ../../..
cd packages/apps/Snap
git reset --hard && git clean -fd
cd ..
cd FMRadio
git reset --hard && git clean -fd
cd ../../..
cd packages/apps/Settings
git reset --hard && git clean -fd
cd ../../..
cd external/wpa_supplicant_8
git reset --hard && git clean -fd
cd ../..

