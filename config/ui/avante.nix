{ lib, config, ... }:

{
  options = { avante.enable = lib.mkEnableOption "Enable avante module"; };
  config = lib.mkIf config.avante.enable {
    plugins.avante = {
      enable = true;
      settings = {
        mappings = {
          ask = "<leader>cpa";
          edit = "<leader>cpe";
          refresh = "<leader>cpr";
          focus = "<leader>cpf";
          toggle = {
            default = "<leader>cpt";
            debug = "<leader>cpd";
            hint = "<leader>cph";
            suggestion = "<leader>cps";
            repomap = "<leader>cpR";
          };
        };
      };
    };
  };
}
