{
  plugins.bufferline = {
    enable = true;
    autoLoad = true;
    # lazyLoad = {
    #   enable = true;
    #   settings = {
    #     cmd = "BufferLine";
    #   };
    # };
  };
  keymaps = [
    {
      key = "<leader>b";
      action = "";
      options = {
        desc = "Buffers";
      };
      mode = "n";
    }
    {
      key = "<leader>bj";
      action = "<cmd>BufferLinePick<CR>";
      options = {
        desc = "Jump";
      };
      mode = "n";
    }
    {
      key = "<leader>bf";
      action = "<cmd>Telescope buffers previewer=false<CR>";
      options = {
        desc = "Find";
      };
      mode = "n";
    }
    {
      key = "<leader>bn";
      action = "<cmd>BufferLineCycleNext<CR>";
      options = {
        desc = "Next";
      };
      mode = "n";
    }
    {
      key = "<leader>bp";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options = {
        desc = "Previous";
      };
      mode = "n";
    }
    {
      key = "<leader>be";
      action = "<cmd>BufferLinePickClose<CR>";
      options = {
        desc = "pick which buffer to close";
      };
      mode = "n";
    }
    {
      key = "<leader>bh";
      action = "<cmd>BufferLineCloseLeft<CR>";
      options = {
        desc = "close all to the left";
      };
      mode = "n";
    }
    {
      key = "<leader>bl";
      action = "<cmd>BufferLineCloseRight<CR>";
      options = {
        desc = "close all to the right";
      };
      mode = "n";
    }
    {
      key = "<leader>bD";
      action = "<cmd>BufferLineSortByDirectory<CR>";
      options = {
        desc = "sort by directory";
      };
      mode = "n";
    }
    {
      key = "<leader>bL";
      action = "<cmd>BufferLineSortByExtension<CR>";
      options = {
        desc = "sort by language";
      };
      mode = "n";
    }
  ];
}
