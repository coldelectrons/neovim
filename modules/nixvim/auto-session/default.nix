{
  plugins.auto-session = {
    enable = true;

    settings = {
      enabled = true;
      auto_auto_session = true;
      use_git_branch = true;
      auto_create = true;

      bypass_session_save_filetypes = [
        "dashboard"
        "nvim-tree"
      ];
    };

  };

  keymaps = [
    {
      mode = "n";
      action = "<cmd>Telescope session-lens<cr>";
      key = "<leader>fs";
      options = {
        desc = "Find Session";
      };
    }
  ];
}
