{pkgs, ...}: {
  plugins.vimtex = {
    enable = true;
    settings = {
      texlivePackage = pkgs.texlive.combined.scheme-full;
    };
  };
}
