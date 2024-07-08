{pkgs, ...}: let
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive.combine) scheme-full tocbibind novel;
  };
in {
  plugins.vimtex = {
    enable = true;
    texlivePackage = tex;
  };
}
