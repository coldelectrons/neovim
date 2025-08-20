{ helpers, ... }: {
  keymaps = [
    {
      mode = [
        "n"
      ];
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>nt";
      options = {
        desc = "nvim-tree: Toggle";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = "n";
      key = "<leader>n";
      action = "";
      options = {
        desc = "nvim-tree";
      };
    }
    {
      mode = "n";
      key = "<leader>nf";
      action = "<cmd>NvimTreeFindFile<cr>";
      options = {
        desc = "nvim-tree: find current file (buffer) in tree";
        silent = true;
      };
    }
  ];

  plugins.nvim-tree = {
    enable = true;

    settings = {
      select_prompts = true;
      tab.sync = {
        open = true;
        close = true;
      };
      renderer = {
        full_name = true;
        highlight_git = true;
      };
      on_attach =
        helpers.mkRaw # lua
          ''
            						function(bufnr)
            							local api = require "nvim-tree.api"

            							local function opts(desc)
            								return { desc = "nvim-tree: ", buffer = bufnr, noremap = true, silent = true }
            							end

            							api.config.mappings.default_on_attach(bufnr)

            							vim.keymap.set("n", "s", api.node.open.vertical, opts("Open (Vertical)"))
            							vim.keymap.set("n", "t", api.node.open.tab, opts("Open (Tab)"))
            							vim.keymap.set("n", "S", api.node.open.horizontal, opts("Open (Horizontal)"))
            							vim.keymap.set("n", "O", api.node.run.system, opts("Open (System)"))
            							vim.keymap.set("n", "<C-r>", api.tree.reload, opts("Reload"))
            							vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
            						end
            					'';
    };
  };
}
