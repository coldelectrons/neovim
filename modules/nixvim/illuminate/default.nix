{
  plugins = {
    illuminate = {
      enable = true;

      # TODO: migrate to mkNeovimPlugin
      # lazyLoad.settings.event = "DeferredUIEnter";

      filetypesDenylist = [
        "dirvish"
        "fugitive"
        "alpha"
        "neo-tree"
        "lazy"
        "TelescopePrompt"
        "Trouble"
        "NvimTree"
        "spectre_panel"
      ];
      largeFileCutoff = 3000;
    };
  };
}
