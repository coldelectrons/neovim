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
      key = "<leader>nn";
      options.desc = "Neorg new note";
      action = "<Plug>(neorg.dirman.new-note)";
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
      key = "<Leader>njj";
      options.desc = "Neorg Journal today";
      action = "<cmd>Neorg journal today<CR>";
    }
    {
      mode = "n";
      key = "<Leader>njt";
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
      key = "<Leader>njk";
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
      key = "<Leader>fn";
      options.desc = "Telescope find all norg files";
      action = "<cmd>Telescope neorg find_all_norg_files<CR>";
    }
    {
      mode = "n";
      key = "<Leader>fl";
      options.desc = "Telescope find all neorg linkable files";
      action = "<cmd>Telescope neorg find_all_linkable_files<CR>";
    }
    {
      mode = "n";
      key = "<leader>nt";
      options.desc = "Neorg task...";
      action = "";
    }
    {
      mode = "n";
      key = "<Leader>ntu";
      options.desc = "Neorg task - mark task as undone";
      action = "<Plug>(neorg.qol.todo-items.todo.task-undone)";
    }
    {
      mode = "n";
      key = "<Leader>ntp";
      options.desc = "Neorg task - mark task as pending";
      action = "<Plug>(neorg.qol.todo-items.todo.task-pending)";
    }
    {
      mode = "n";
      key = "<Leader>ntd";
      options.desc = "Neorg task - mark task as done";
      action = "<Plug>(neorg.qol.todo-items.todo.task-done)";
    }
    {
      mode = "n";
      key = "<Leader>nth";
      options.desc = "Neorg task - mark task as on hold";
      action = "<Plug>(neorg.qol.todo-items.todo.task-on-hold)";
    }
    {
      mode = "n";
      key = "<Leader>ntc";
      options.desc = "Neorg task - mark task as cancelled";
      action = "<Plug>(neorg.qol.todo-items.todo.task-cancelled)";
    }
    {
      mode = "n";
      key = "<Leader>ntr";
      options.desc = "Neorg task - mark task as recurring";
      action = "<Plug>(neorg.qol.todo-items.todo.task-recurring)";
    }
    {
      mode = "n";
      key = "<Leader>nti";
      options.desc = "Neorg task - mark task as important";
      action = "<Plug>(neorg.qol.todo-items.todo.task-important)";
    }
    {
      mode = "n";
      key = "<Leader>nta";
      options.desc = "Neorg task - mark task as ambiguous";
      action = "<Plug>(neorg.qol.todo-items.todo.task-ambiguous)";
    }
    {
      mode = "n";
      key = "<C-Space>";
      options.desc = "Neorg task - cycle";
      action = "<Plug>(neorg.qol.todo-items.todo.task-cycle)";
    }
    {
      mode = "n";
      key = "<CR>";
      options.desc = "Neorg jump to link";
      action = "<Plug>(neorg.esupports.hop.hop-link)";
    }
    {
      mode = "n";
      key = "<M-CR>";
      options.desc = "Neorg jump to link in vertical split";
      action = "<Plug>(neorg.esupports.hop.hop-link.vsplit)";
    }
    {
      mode = "n";
      key = "<M-t>";
      options.desc = "Neorg jump to link in new/existing tab";
      action = "<Plug>(neorg.esupports.hop.hop-link.tab-drop)";
    }
    {
      mode = "n";
      key = "<Tab>";
      options.desc = "Neorg promote";
      action = "<Plug>(neorg.promo.promote)";
    }
    {
      mode = "n";
      key = "<S-Tab>";
      options.desc = "Neorg demote";
      action = "<Plug>(neorg.promo.demote)";
    }
    # WARN Can't do it like this, C-Tab is for switching desktop windows
    # {
    #   mode = "n";
    #   key = "<C-Tab>";
    #   options.desc = "Neorg promote recursively";
    #   action = "<Plug>(neorg.promo.promote.nested)";
    # }
    # {
    #   mode = "n";
    #   key = "<S-C-Tab>";
    #   options.desc = "Neorg demote recursively";
    #   action = "<Plug>(neorg.promo.demote.nested)";
    # }
    {
      mode = "n";
      key = "<Leader>nl";
      options.desc = "Neorg list...";
      action = "";
    }
    {
      mode = "n";
      key = "<Leader>nlt";
      options.desc = "Neorg list toggle between ordered/unordered";
      action = "<Plug>(neorg.pivot.list.toggle)";
    }
    {
      mode = "n";
      key = "<Leader>nli";
      options.desc = "Neorg list invert";
      action = "<Plug>(neorg.pivot.list.invert)";
    }
    {
      mode = "n";
      key = "<Leader>nid";
      options.desc = "Neorg insert date link";
      action = "<Plug>(neorg.tempus.insert-date)";
    }
    {
      mode = "n";
      key = "<Leader>nm";
      options.desc = "Neorg magnify code block to separate buffer";
      action = "<Plug>(neorg.looking-glass.magnify-code-block)";
    }
    # {
    #   mode = "i";
    #   key = "<C-Tab>";
    #   options.desc = "Neorg promote object recursively";
    #   action = "<Plug>(neorg.promo.promote)";
    # }
    # {
    #   mode = "i";
    #   key = "<S-C-Tab>";
    #   options.desc = "Neorg demote object recursively";
    #   action = "<Plug>(neorg.promo.demote)";
    # }
    {
      mode = "i";
      key = "<M-CR>";
      options.desc = "Neorg continue object";
      action = "<Plug>(neorg.itero.next-iteration)";
    }
    {
      mode = "i";
      key = "<M-d>";
      options.desc = "Neorg insert date link";
      action = "<Plug>(neorg.tempus.insert-date.insert-mode)";
    }
    {
      mode = "v";
      key = "<Tab>";
      options.desc = "Neorg promote range";
      action = "<Plug>(neorg.promo.promote.range)";
    }
    {
      mode = "v";
      key = "<S-Tab>";
      options.desc = "Neorg demote range";
      action = "<Plug>(neorg.promo.demote.range)";
    }
  ];
}
