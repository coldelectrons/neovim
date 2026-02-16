{ config, lib, ... }:
{
  # autoCmd = lib.optionals config.plugins.neorg.enable [
  #   {
  #     event = "FileType";
  #     pattern = "norg";
  #     command = "setlocal conceallevel=1";
  #   }
  #   {
  #     event = "BufWritePre";
  #     pattern = "*.norg";
  #     command = "normal gg=G``zz";
  #   }
  # ];

  plugins.neorg = {
    enable = true;
    telescopeIntegration.enable = config.plugins.telescope.enable;

    lazyLoad.settings = {
      cmd = "Neorg";
      ft = "norg";
    };

    settings = {
      lazy_loading = true;

      load = {
        "core.defaults" = lib.mkIf config.plugins.treesitter.enable { __empty = null; };

        # "core.keybinds".config.hook.__raw = ''
        #   function(keybinds)
        #     keybinds.unmap('norg', 'n', '<C-s>')
        #   end
        # '';

        "core.dirman".config.workspaces = {
          notes = "~/notes";
          nix = "~/nix/notes";
        };

        "core.concealer".__empty = null;
        "core.completion".config.engine = "nvim-cmp";
      };
    };
  };
  keymaps = lib.mkIf config.plugins.neorg.enable [
    {
      mode = "n";
      key = "<leader>n";
      options.desc = "Neorg";
      action = "";
    }
    {
      mode = "n";
      key = "<leader>nj";
      options.desc = "Neorg Journal";
      action = "";
    }
    {
      mode = "n";
      key = "<leader>nc";
      options.desc = "Neorg toggle concealer";
      action = "<cmd>Neorg toggle-concealer<CR>";
    }
    {
      mode = "n";
      key = "<Leader>nja";
      options.desc = "Neorg Journal today";
      action = "<cmd>Neorg journal today<CR>";
    }
    {
      mode = "n";
      key = "<Leader>njm";
      options.desc = "Neorg Journal TOC";
      action = "<cmd>Neorg journal toc<CR>";
    }
    {
      mode = "n";
      key = "<Leader>njh";
      options.desc = "Neorg Journal yesterday";
      action = "<cmd>Neorg journal yesterday<CR>";
    }
    {
      mode = "n";
      key = "<Leader>njd";
      options.desc = "Neorg Journal tomorrow";
      action = "<cmd>Neorg journal tomorrow<CR>";
    }
    {
      mode = "n";
      key = "<Leader>nw";
      options.desc = "Neorg workspace";
      action = "<cmd>Neorg workspace<CR>";
    }
    {
      mode = "n";
      key = "<Leader>ni";
      options.desc = "Neorg index";
      action = "<cmd>Neorg index<CR>";
    }
   	{
      mode = "n";
   	  key = "<Leader>nf";
      options.desc = "Neorg find all norg files";
   	  action = "<cmd>Neorg keybind all core.integrations.telescope.find_norg_files<CR>";
   	}
   	{
      mode = "n";
   	  key = "<Leader>nl";
      options.desc = "Neorg find all linkable files";
   	  action = "<cmd>Neorg keybind all core.integrations.telescope.find_linkable<CR>";
   	}
  ];
}
