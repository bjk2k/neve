{ lib, config, ... }: {
  imports =
    [ ./treesitter-nvim.nix ./nvim-jdtls.nix ./nvim-lint.nix ./prose.nix ];

  options = {
    languages.enable = lib.mkEnableOption "Enable languages module";
  };
  config = lib.mkIf config.languages.enable {
    treesitter-nvim.enable = lib.mkDefault true;
    nvim-jdtls.enable = lib.mkDefault false;
    nvim-lint.enable = lib.mkDefault true;
    prose.enable = lib.mkDefault true;
  };
}
