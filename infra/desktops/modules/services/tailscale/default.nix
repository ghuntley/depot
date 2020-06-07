# Copyright (c) 2020 Geoffrey Huntley <ghuntley@ghuntley.com>. All rights reserved.
# SPDX-License-Identifier: Proprietary

{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [ tailscale ];

  services.tailscale.enable = true;
}

