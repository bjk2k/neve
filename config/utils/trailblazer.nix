{ lib, config, pkgs, ... }:
let
  trailblazerVimPlugin = pkgs.vimUtils.buildVimPlugin {
    name = "nvim-trailblazer";
    src = pkgs.fetchFromGitHub {
      owner = "LeonHeidelbach";
      repo = "trailblazer.nvim";
      rev = "master";
      sha256 = "sha256-uMlp+PqYFgal7lptARJnRToj/QR9BKHa3+0VtBb4L2w=";
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
