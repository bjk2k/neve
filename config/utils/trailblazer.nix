{ lib, config, pkgs, ... }:
let
  trailblazerVimPlugin = pkgs.vimUtils.buildVimPlugin {
    name = "nvim-trailblazer";
    src = pkgs.fetchFromGitHub {
      owner = "LeonHeidelbach";
      repo = "trailblazer.nvim";
      rev = "master";
      sha256 = "sha256-9q8CmbUGmbKb7w4fzOS7XBSg8YM5WwqwvLUN2pVOAtI=";
    };

  };
in {
  options = {
    trailblazer.enable = lib.mkEnableOption "Enable harpoon module";
  };
  config = lib.mkIf config.trailblazer.enable {
    # ensures fzf-lua is installed
    plugins.fzf-lua = { enable = true; };

    extraPlugins = [ trailblazerVimPlugin ];

  };
}
