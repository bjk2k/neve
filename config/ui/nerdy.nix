{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (vimUtils.buildVimPlugin {
      pname = "nerdy.nvim";
      version = "main";
      src = pkgs.fetchFromGitHub {
        owner = "2KAbhishek";
        repo = "nerdy.nvim";
        rev = "b467d6609b78d6a5f1e12cbc08fcc1ac87af20f5";
        sha256 = "sha256-k5ZmhUHGHlFuGWiviEYeHGCbXLZHY61pUnvpZgSJhPs=";
      };
    })
  ];
  extraConfigLua = ''
  '';
}
