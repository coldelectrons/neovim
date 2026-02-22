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
# <LocalLeader>tu	<Plug>(neorg.qol.todo-items.todo.task-undone)	Mark task as undone
# <LocalLeader>tp	<Plug>(neorg.qol.todo-items.todo.task-pending)	Mark task as pending
# <LocalLeader>td	<Plug>(neorg.qol.todo-items.todo.task-done)	Mark task as done
# <LocalLeader>th	<Plug>(neorg.qol.todo-items.todo.task-on-hold)	Mark task as on hold
# <LocalLeader>tc	<Plug>(neorg.qol.todo-items.todo.task-cancelled)	Mark task as cancelled
# <LocalLeader>tr	<Plug>(neorg.qol.todo-items.todo.task-recurring)	Mark task as recurring
# <LocalLeader>ti	<Plug>(neorg.qol.todo-items.todo.task-important)	Mark task as important
# <LocalLeader>ta	<Plug>(neorg.qol.todo-items.todo.task-ambiguous)	Mark task as ambiguous
# <C-Space>	<Plug>(neorg.qol.todo-items.todo.task-cycle)	Cycle task status
# <CR>	<Plug>(neorg.esupports.hop.hop-link)	Jump to link
# <M-CR>	<Plug>(neorg.esupports.hop.hop-link.vsplit)	Jump to link in vertical split
# <M-t>	<Plug>(neorg.esupports.hop.hop-link.tab-drop)	Jump to link in new/existing tab
# >.	<Plug>(neorg.promo.promote)	Promote object (non-recursively)
# <,	<Plug>(neorg.promo.demote)	Demote object (non-recursively)
# >>	<Plug>(neorg.promo.promote.nested)	Promote object (recursively)
# <<	<Plug>(neorg.promo.demote.nested)	Demote object (recursively)
# <LocalLeader>lt	<Plug>(neorg.pivot.list.toggle)	Toggle between ordered/unordered list
# <LocalLeader>li	<Plug>(neorg.pivot.list.invert)	Invert list items
# <LocalLeader>id	<Plug>(neorg.tempus.insert-date)	Insert date link
# <LocalLeader>cm	<Plug>(neorg.looking-glass.magnify-code-block)	Magnify code block to separate buffer
# Insert Mode
# Key	Action	Description
# <C-t>	<Plug>(neorg.promo.promote)	Promote object (recursively)
# <C-d>	<Plug>(neorg.promo.demote)	Demote object (recursively)
# <M-CR>	<Plug>(neorg.itero.next-iteration)	Continue object (e.g., list item)
# <M-d>	<Plug>(neorg.tempus.insert-date.insert-mode)	Insert date link
# Visual Mode
# Key	Action	Description
# >	<Plug>(neorg.promo.promote.range)	Promote objects in range
# <	<Plug>(neorg.promo.demote.range)	Demote objects in range
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
  ];
}
