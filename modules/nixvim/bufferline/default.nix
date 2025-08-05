{
  plugins.bufferline = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        cmd = "Bufferline";
      };
    };
  };
  keymaps = [
    {
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<CR>";
      options = {
        desc = "bufferline cycle next buffer";
      };
      mode = "n";
    }
    {
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options = {
        desc = "bufferline cycle prev buffer";
      };
      mode = "n";
    }
  ];
}


