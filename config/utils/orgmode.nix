{ lib, config, ... }: {
  options = { orgmode.enable = lib.mkEnableOption "Enable orgmode module"; };
  config = lib.mkIf config.orgmode.enable {
    plugins.orgmode = {
      enable = true;
      settings = {
        org_agenda_files = "~/personal/red-panda-orgfiles/**/*";
        org_default_notes_file = "~/personal/red-panda-orgfiles/notes.org";
      };
    };
  };
}
