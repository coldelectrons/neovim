_: {
  plugins.lualine = {
    enable = true;
    settings = {
      extensions = [
        "fzf"
        "neo-tree"
      ];
      options = {
        globalstatus = true;
        disabledFiletypes = {
          statusline = ["startup" "alpha"];
        };
      };
      sections = {
        lualine_a = [ "mode" ];
        lualine_b = [ "branch" "diff" ];
        lualine_c = [ "diagnostics" "filetype" "filename" ];
        lualine_x = [ "navic" ];
        lualine_y = [ "progress" ];
        lualine_z = [ "location" ];
      };

    };
  };
}
