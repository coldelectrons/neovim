{
  plugins.trouble = {
    enable = true;

    settings = {
      auto_close = true;
      auto_open = false;
      auto_fold = false;
      auto_preview = false;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        desc = "Toggle trouble";
      };
    }
    {
      mode = "n";
      key = "<leader>tn";
      action = "<cmd>Trouble todo toggle<cr>";
      options = {
        desc = "Toggle notes";
      };
    }
	  {
      mode = "n";
      key = "<leader>tr";
      action = "<cmd>TroubleToggle lsp_references<cr>";
      options = {
        desc = "Toggle references";
      };
    }
	  {
      mode = "n";
      key = "<leader>tf";
      action = "<cmd>TroubleToggle lsp_definitions<cr>";
      options = {
        desc = "Toggle definitions";
      };
    }
	  {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>TroubleToggle document_diagnostics<cr>";
      options = {
        desc = "Toggle diagnostics";
      };
    }
	  {
      mode = "n";
      key = "<leader>tq";
      action = "<cmd>TroubleToggle quickfix<cr>";
      options = {
        desc = "QuickFix";
      };
    }
	  {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>TroubleToggle loclist<cr>";
      options = {
        desc = "LocationList";
      };
    }
	  {
      mode = "n";
      key = "<leader>tw";
      action = "<cmd>TroubleToggle workspace_diagnostics<cr>";
      options = {
        desc = "Workspace Diagnostics";
      };
    }
  ];
}
