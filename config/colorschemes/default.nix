{ lib, config, ... }: {
  imports =
    [ ./base16.nix ./catppuccin.nix ./rose-pine.nix ./kanagawa.nix ./nord.nix ];

  options = {
    colorschemes.enable = lib.mkEnableOption "Enable colorschemes module";
  };
  config = lib.mkIf config.colorschemes.enable {
    base16.enable = lib.mkDefault false;
    catppuccin.enable = lib.mkDefault false;
    rose-pine.enable = lib.mkDefault false;
    kanagawa.enable = lib.mkDefault true;
    nord.enable = lib.mkDefault false;
  };
}
