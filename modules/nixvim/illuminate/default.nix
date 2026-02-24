{
  plugins = {
    illuminate = {
      enable = true;

      settings = {
        filetypes_denylist = [
          "dirvish"
          "fugitive"
          "alpha"
          "neo-tree"
          "lazy"
          "TelescopePrompt"
          "Trouble"
          "NvimTree"
          "Yazi"
          "spectre_panel"
        ];
        large_file_cutoff = 3000;
      };
    };
  };
}
