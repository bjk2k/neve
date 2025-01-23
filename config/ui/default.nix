{ lib, config, ... }: {
  imports = [
    ./alpha.nix
    ./barbecue.nix
    ./dressing-nvim.nix
    ./indent-blankline.nix
    ./noice.nix
    ./nui.nix
    ./notify.nix
    ./web-devicons.nix

    ./true-zen.nix
    ./twilight.nix
    ./nerdy.nix
  ];

  options = { ui.enable = lib.mkEnableOption "Enable ui module"; };
  config = lib.mkIf config.ui.enable {
    alpha.enable = lib.mkDefault true;
    barbecue.enable = lib.mkDefault true;
    dressing-nvim.enable = lib.mkDefault true;
    indent-blankline.enable = lib.mkDefault true;
    noice.enable = lib.mkDefault false;
    notify.enable = lib.mkDefault true;
    nui.enable = lib.mkDefault true;
    web-devicons.enable = lib.mkDefault true;
    truezen.enable = lib.mkDefault true;
    twilight.enable = lib.mkDefault true;
    nerdy.enable = lib.mkDefault true;
  };
}
