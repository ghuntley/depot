# Copyright (c) 2020 Geoffrey Huntley <ghuntley@ghuntley.com>. All rights reserved.
# SPDX-License-Identifier: Proprietary

{ config, pkgs, sops, ... }: {
  imports =
    [
      <sops-nix/modules/sops>
      ../modules/avahi.nix
      ../modules/builders.nix
      ../modules/bluetooth.nix
      ../modules/boot.nix
      ../modules/corsair.nix
      ../modules/docker.nix
      ../modules/efi.nix
      ../modules/entropy.nix
      ../modules/fail2ban.nix
      ../modules/firewall.nix
      #../modules/fonts.nix
      ../modules/gist.nix
      ../modules/googlechrome.nix
      ../modules/hidpi.nix
      ../modules/i18n.nix
      ../modules/initrd.nix
      ../modules/libvirtd.nix
      ../modules/logging.nix
      ../modules/logitech.nix
      ../modules/mail.nix
      ../modules/microcode.nix
      ../modules/metabox.nix
      ../modules/model01.nix
      ../modules/mosh.nix
      ../modules/neovim.nix
      ../modules/networking.nix
      ../modules/networking-ipv6.nix
      ../modules/nix-daemon.nix
      ../modules/nvidia.nix
      ../modules/nvme.nix
      ../modules/opengl.nix
      ../modules/pkgs-x11.nix
      ../modules/pkgs.nix
      ../modules/powermanagement.nix
      ../modules/printing.nix
      ../modules/prometheus.nix
      ../modules/setcap-wrapper.nix
      ../modules/screenlock.nix
      ../modules/shell.nix
      ../modules/sops.nix
      ../modules/sound.nix
      #      ../modules/sourcegraph.nix
      ../modules/sshd.nix
      ../modules/steam.nix
      ../modules/sudo.nix
      ../modules/sysctl.nix
      ../modules/tailscale.nix
      ../modules/telegraf.nix
      ../modules/timesyncd.nix
      ../modules/timezone.nix
      ../modules/users.nix
      ../modules/wireless.nix
      ../modules/x11-i3.nix
      ../modules/yubikey.nix
      ../modules/zfs.nix
      ./hardware-configuration.nix
    ];

  networking.hostId = "DEADBEEF";
  networking.hostName = "metabox";

  #networking.interfaces.enp109s0.useDHCP = true;
  #networking.interfaces.wlp112s0.useDHCP = true;

  system.stateVersion = "20.03";
}
