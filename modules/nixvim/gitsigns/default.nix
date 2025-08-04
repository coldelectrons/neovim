{ helpers, config, ... }:
{
  plugins.gitsigns = {
    enable = true;

    settings = {
      current_line_blame = true;
      trouble = config.plugins.trouble.enable;

      signs = {
        add.text = "+";
        change.text = "~";
        delete.text = "-";
        topdelete.text = "-";
        changedelete.text = "~";
        untracked.text = "┆";
      };

      on_attach =
        helpers.mkRaw # lua
          ''
            function(bufnr)
              local which_key = require("which-key")
              local gitsigns = require("gitsigns")

              which_key.register(
                {
                  { "[c",
                    function()
                      if vim.wo.diff then return '[c' end
                      vim.schedule(function() gitsigns.prev_hunk() end)
                      return '<Ignore>'
                    end,
                    buffer = 2, desc = "Previous hunk"
                  },
                  { "]c",
                    function()
                      if vim.wo.diff then return ']c' end
                      vim.schedule(function() gitsigns.next_hunk() end)
                      return '<Ignore>'
                    end,
                    buffer = 2, desc = "Next hunk"
                  },
                }
              )

              which_key.register(
                {
                  { "<leader>h", buffer = 2, group = "Git Hunk" },
                  { "<leader>hb", function() gitsigns.blame_line { full = true } end, buffer = 2, desc = "Blame Line" },
                  { "<leader>hR", "<cmd>Gitsigns reset_buffer<cr>", buffer = 2, desc = "Reset Buffer" },
                  { "<leader>hS", "<cmd>Gitsigns stage_buffer<cr>", buffer = 2, desc = "Stage Buffer" },
                  { "<leader>hd", "<cmd>Gitsigns diffthis<cr>", buffer = 2, desc = "Diff" },
                  { "<leader>hD", function() gitsigns.diffthis("~") end, buffer = 2, desc = "Diff (~)" },
                  { "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>", buffer = 2, desc = "Preview Hunk" },
                  { "<leader>hr", "<cmd>Gitsigns reset_hunk<cr>", buffer = 2, desc = "Reset Hunk" },
                  { "<leader>hs", "<cmd>Gitsigns stage_hunk<cr>", buffer = 2, desc = "Stage Hunk" },
                  { "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<cr>", buffer = 2, desc = "Undo Stage Hunk" },
                  { "<leader>t", buffer = 2, group = "Toggle" },
                  { "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<cr>", buffer = 2, desc = "Toggle Current Line Blame" },
                  { "<leader>td", "<cmd>Gitsigns toggle_deleted<cr>", buffer = 2, desc = "Toggle Deleted" },
                }
              )
            end
          '';
    };
  };
}
