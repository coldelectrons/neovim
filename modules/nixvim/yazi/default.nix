{ config, lib, ... }:
{
  plugins = {
    yazi = {
      enable = true;

      lazyLoad = {
        settings = {
          cmd = [
            "Yazi"
          ];
        };
      };
    };

    which-key.settings.spec = lib.optionals (config.plugins.yazi.enable) [
      {
        __unkeyed-1 = "<leader>e";
        icon = "󰪶";
      }
      {
        __unkeyed-1 = "<leader>E";
        icon = "󰪶";
      }
    ];
  };

  keymaps = lib.optionals (config.plugins.yazi.enable) [
    {
      mode = "n";
      key = "<leader>e";
      action = "<CMD>Yazi<CR>";
      options = {
        desc = "Yazi (current file)";
      };
    }
    {
      mode = "n";
      key = "<leader>E";
      action = "<CMD>Yazi toggle<CR>";
      options = {
        desc = "Yazi (resume)";
      };
    }
  ];
}
