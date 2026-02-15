{
  config,
  lib,
  pkgs,
  ...
}:
{
  plugins.patterns = {
    enable = false;
  };
  keymaps = lib.mkIf config.plugins.patterns.enable [
    {
      mode = "n";
      key = "<leader>ph";
      action = "<cmd>Patterns hover<CR>";
      options = {
        desc = "Patterns hover";
      };
    }
    {
      mode = "n";
      key = "<leader>pe";
      action = "<cmd>Patterns explain<CR>";
      options = {
        desc = "Patterns explain";
      };
    }
  ];
}
