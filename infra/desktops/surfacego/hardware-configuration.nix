# Copyright (c) 2020 Geoffrey Huntley <ghuntley@ghuntley.com>. All rights reserved.
# SPDX-License-Identifier: Proprietary

# Do not modify this file!  It was generated by ânixos-generate-configâ
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [
      <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "uas" "usbhid" "sd_mod" "rtsx_pci_sdmmc" "aes_x86_64" "aesni_intel" "cryptd" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  boot.kernelParams = [ "mem_sleep_default=deep" ];

  hardware.firmware = with pkgs; [
    (callPackage ./qca6174_firmware.nix { })
  ];

  fileSystems."/" =
    {
      device = "/dev/disk/by-uuid/690f526e-3ce6-4827-a253-d1163481dde7";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."cryptroot".device = "/dev/disk/by-uuid/fa025728-50db-4aa5-a4bf-9e581935666d";

  fileSystems."/boot" =
    {
      device = "/dev/disk/by-uuid/B55B-8557";
      fsType = "vfat";
    };

  swapDevices = [{ device = "/swapfile"; size = 10000; }];

  nix.maxJobs = lib.mkDefault 4;
  powerManagement.cpuFreqGovernor = "powersave";
}
