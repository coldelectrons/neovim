{
  plugins.telekasten = {
    enable = true;
    settings = {
      home = {
        __raw = "vim.fn.expand(\"~/Sync/zk/\")";
      };
    };
  };
  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>T";
      group = "+Telekasten";
      icon = "󰓩 ";
    }
  ];
  keymaps = [
    {
      key = "<leader>Tf";
      action = "<cmd>Telekasten find_notes<CR>";
      options = {
        desc = "find notes";
      };
      mode = "n";
    }
    {
      key = "<leader>Tt";
      action = "<cmd>ZkTags { excludeHrefs = { 'node_modules' } }<cr>";
      options = {
        desc = "find tags";
      };
      mode = "n";
    }
    {
      key = "<leader>Td";
      action = "<cmd>Telekasten find_daily_notes<cr>";
      options = {
        desc = "find daily notes";
      };
      mode = "n";
    }
    {
      key = "<leader>Tg";
      action = "<cmd>Telekasten search_notes<cr>";
      options = {
        desc = "search notes";
      };
      mode = "n";
    }
    {
      key = "<leader>Tz";
      action = "<cmd>Telekasten follow_link<cr>";
      options = {
        desc = "follow link";
      };
      mode = "n";
    }
    {
      key = "<leader>TT";
      action = "<cmd>Telekasten goto_today<cr>";
      options = {
        desc = "go to note for today";
      };
      mode = "n";
    }
    {
      key = "<leader>TW";
      action = "<cmd>Telekasten goto_thisweek<cr>";
      options = {
        desc = "go to note for this week";
      };
      mode = "n";
    }
    {
      key = "<leader>Tw";
      action = "<cmd>Telekasten find_weekly_notes<cr>";
      options = {
        desc = "find weekly notes";
      };
      mode = "n";
    }
    {
      key = "<leader>Tn";
      action = "<cmd>Telekasten new_note<cr>";
      options = {
        desc = "new note";
      };
      mode = "n";
    }
    {
      key = "<leader>TN";
      action = "<cmd>Telekasten new_templated_note<cr>";
      options = {
        desc = "new templated note";
      };
      mode = "n";
    }
    {
      key = "<leader>Ty";
      action = "<cmd>Telekasten yank_notelink<cr>";
      options = {
        desc = "yank notelink";
      };
      mode = "n";
    }
    {
      key = "<leader>Tc";
      action = "<cmd>Telekasten show_calendar<cr>";
      options = {
        desc = "show calendar";
      };
      mode = "n";
    }
    {
      key = "<leader>TC";
      action = "<cmd>CalendarT<cr>";
      options = {
        desc = "SHOW CALENDAR";
      };
      mode = "n";
    }
    {
      key = "<leader>Ti";
      action = "<cmd>Telekasten paste_img_and_link<cr>";
      options = {
        desc = "paste image and link from clipboard";
      };
      mode = "n";
    }
    {
      key = "<leader>Tt";
      action = "<cmd>Telekasten toggle_todo<cr>";
      options = {
        desc = "toggle todo";
      };
      mode = "n";
    }
    {
      key = "<leader>Tb";
      action = "<cmd>Telekasten show_backlinks<cr>";
      options = {
        desc = "show backlinks";
      };
      mode = "n";
    }
    {
      key = "<leader>TF";
      action = "<cmd>Telekasten find_friends<cr>";
      options = {
        desc = "find friends";
      };
      mode = "n";
    }
    {
      key = "<leader>TI";
      action = "<cmd>Telekasten insert_img_link<cr>";
      options = {
        desc = "insert image link";
      };
      mode = "n";
    }
    {
      key = "<leader>Tp";
      action = "<cmd>Telekasten preview_img<cr>";
      options = {
        desc = "preview image";
      };
      mode = "n";
    }
    {
      key = "<leader>Tm";
      action = "<cmd>Telekasten browse_media<cr>";
      options = {
        desc = "browse media";
      };
      mode = "n";
    }
    {
      key = "<leader>Ts";
      action = "<cmd>Telekasten show_tags<cr>";
      options = {
        desc = "show tags";
      };
      mode = "n";
    }
    {
      key = "<leader>Tv";
      action = "<cmd>Telekasten switch_vault<cr>";
      options = {
        desc = "switch vault";
      };
      mode = "n";
    }
    {
      key = "<leader>TZ";
      action = "<cmd>Telekasten panel<cr>";
      options = {
        desc = "command palette panel";
      };
      mode = "n";
    }
  ];
}

