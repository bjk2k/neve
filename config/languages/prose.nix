{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    vim-grammarous
  ];
}
