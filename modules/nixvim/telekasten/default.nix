{
  plugins.telekasten = {
    enable = true;
    settings = {
      home = {
        __raw = "vim.fn.expand(\"~/Sync/zk/\")";
      };
    };
  };
  keymaps = [
    {
      key = "<leader>z";
      action = "";
      options = {
        desc = "Telekasten";
      };
      mode = "n";
    }
    {
      key = "<leader>zf";
      action = "<cmd>Telekasten find_notes<CR>";
      options = {
        desc = "find notes";
      };
      mode = "n";
    }
    {
      key = "<leader>zt";
      action = "<cmd>ZkTags { excludeHrefs = { 'node_modules' } }<cr>";
      options = {
        desc = "find tags";
      };
      mode = "n";
    }
    {
      key = "<leader>zd";
      action = "<cmd>Telekasten find_daily_notes<cr>";
      options = {
        desc = "find daily notes";
      };
      mode = "n";
    }
    {
      key = "<leader>zg";
      action = "<cmd>Telekasten search_notes<cr>";
      options = {
        desc = "search notes";
      };
      mode = "n";
    }
    {
      key = "<leader>zz";
      action = "<cmd>Telekasten follow_link<cr>";
      options = {
        desc = "follow link";
      };
      mode = "n";
    }
    {
      key = "<leader>zT";
      action = "<cmd>Telekasten goto_today<cr>";
      options = {
        desc = "go to note for today";
      };
      mode = "n";
    }
    {
      key = "<leader>zW";
      action = "<cmd>Telekasten goto_thisweek<cr>";
      options = {
        desc = "go to note for this week";
      };
      mode = "n";
    }
    {
      key = "<leader>zw";
      action = "<cmd>Telekasten find_weekly_notes<cr>";
      options = {
        desc = "find weekly notes";
      };
      mode = "n";
    }
    {
      key = "<leader>zn";
      action = "<cmd>Telekasten new_note<cr>";
      options = {
        desc = "new note";
      };
      mode = "n";
    }
    {
      key = "<leader>zN";
      action = "<cmd>Telekasten new_templated_note<cr>";
      options = {
        desc = "new templated note";
      };
      mode = "n";
    }
    {
      key = "<leader>zy";
      action = "<cmd>Telekasten yank_notelink<cr>";
      options = {
        desc = "yank notelink";
      };
      mode = "n";
    }
    {
      key = "<leader>zc";
      action = "<cmd>Telekasten show_calendar<cr>";
      options = {
        desc = "show calendar";
      };
      mode = "n";
    }
    {
      key = "<leader>zC";
      action = "<cmd>CalendarT<cr>";
      options = {
        desc = "SHOW CALENDAR";
      };
      mode = "n";
    }
    {
      key = "<leader>zi";
      action = "<cmd>Telekasten paste_img_and_link<cr>";
      options = {
        desc = "paste image and link from clipboard";
      };
      mode = "n";
    }
    {
      key = "<leader>zt";
      action = "<cmd>Telekasten toggle_todo<cr>";
      options = {
        desc = "toggle todo";
      };
      mode = "n";
    }
    {
      key = "<leader>zb";
      action = "<cmd>Telekasten show_backlinks<cr>";
      options = {
        desc = "show backlinks";
      };
      mode = "n";
    }
    {
      key = "<leader>zF";
      action = "<cmd>Telekasten find_friends<cr>";
      options = {
        desc = "find friends";
      };
      mode = "n";
    }
    {
      key = "<leader>zI";
      action = "<cmd>Telekasten insert_img_link<cr>";
      options = {
        desc = "insert image link";
      };
      mode = "n";
    }
    {
      key = "<leader>zp";
      action = "<cmd>Telekasten preview_img<cr>";
      options = {
        desc = "preview image";
      };
      mode = "n";
    }
    {
      key = "<leader>zm";
      action = "<cmd>Telekasten browse_media<cr>";
      options = {
        desc = "browse media";
      };
      mode = "n";
    }
    {
      key = "<leader>zs";
      action = "<cmd>Telekasten show_tags<cr>";
      options = {
        desc = "show tags";
      };
      mode = "n";
    }
    {
      key = "<leader>zv";
      action = "<cmd>Telekasten switch_vault<cr>";
      options = {
        desc = "switch vault";
      };
      mode = "n";
    }
    {
      key = "<leader>zZ";
      action = "<cmd>Telekasten panel<cr>";
      options = {
        desc = "command palette panel";
      };
      mode = "n";
    }
  ];
}
