{ pkgs, lib, config, ... }:
{
  options = {
    venv.enable = lib.mkEnableOption "Enable Venv Selector module";
  };
  config = lib.mkIf config.venv.enable {
      extraPlugins = [
        (pkgs.vimUtils.buildVimPlugin {
          name = "venv-selector";
          src = pkgs.fetchFromGitHub {
            owner = "linux-cultist";
            repo = "venv-selector.nvim";
            rev = "c43dc6bf8c7e7cf124a991775ed3defe87112d3a";
            hash = "sha256-puF9GaP+o0JBARdaid4JNgwfcOH94ipJQCWi+hP98R4=";
          };
        })
      ];

  };
}
