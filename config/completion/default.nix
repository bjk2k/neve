{ lib, config, ... }: {
  imports = [ ./cmp.nix ./copilot.nix ./lspkind.nix ./blink.nix ];

  options = {
    completion.enable = lib.mkEnableOption "Enable completion module";
  };
  config = lib.mkIf config.completion.enable {
    # cmp.enable = lib.mkDefault true;
    copilot.enable = lib.mkDefault true;
    lspkind.enable = lib.mkDefault false;
    blink.enable = lib.mkDefault true;
  };
}
