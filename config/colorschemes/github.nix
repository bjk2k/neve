{ pkgs, lib, config, ... }:
let
  github-nvim-theme = pkgs.vimUtils.buildVimPlugin {
    name = "github-nvim-theme";
    src = pkgs.fetchFromGitHub {
      owner = "projekt0n";
      repo = "github-nvim-theme";
      rev = "d92e1143e5aaa0d7df28a26dd8ee2102df2cadd8";
      hash = "sha256-FO4mwRY2qjutjVTiW0wN5KVhuoBZmycfOwMFInaTnNo=";
    };
  };
in {
  options = {
    github.enable = lib.mkEnableOption "Enable github-nvim-theme module";
  };
  config = lib.mkIf config.github.enable {
    extraPlugins = [ github-nvim-theme ];
    colorscheme = "github_dark_default";
  };
}
