{ helpers, pkgs, ... }:
{
  extraPackages = with pkgs; [ ripgrep ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>t";
      action = "";
      options = {
        desc = "Telescope search";
      };
    }
  ];

  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>tf" = {
        action = "git_files";
        options = {
          desc = "Search: Files";
        };
      };
      "<leader>tF" = {
        action = "find_files hidden=true";
        options = {
          desc = "Search: Files (hidden)";
        };
      };
      "<leader>tg" = {
        action = "live_grep";
        options = {
          desc = "Search: Grep";
        };
      };
      "<leader>tG" = {
        action = "live_grep hidden=true";
        options = {
          desc = "Search: Grep (hidden)";
        };
      };
    };

    extensions = {
      fzf-native.enable = true;
      media-files.enable = true;
      ui-select.enable = true;
      file-browser = {
        enable = true;
        settings = {
          add_dirs = true;
          grouped = true;
          hidden = true;
        };
      };
    };
  };
}
