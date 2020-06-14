# Copyright (c) 2020 Geoffrey Huntley <ghuntley@ghuntley.com>. All rights reserved.
# SPDX-License-Identifier: Proprietary

{ pkgs, ... }: {

  users.extraUsers.root = {
    shell = pkgs.zsh;
    openssh.authorizedKeys.keys = [ "" ];
  };
}
