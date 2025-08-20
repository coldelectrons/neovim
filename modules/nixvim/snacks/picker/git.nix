{ config
, lib
, ...
}:
{
  keymaps =
    lib.mkIf (config.plugins.snacks.enable && lib.hasAttr "picker" config.plugins.snacks.settings)
      [
        {
          mode = "n";
          key = "<leader>fG";
          action = ''<cmd>lua Snacks.picker.git_files()<cr>'';
          options = {
            desc = "Find git files";
          };
        }
        {
          mode = "n";
          key = "<leader>G";
          action = "";
          options = {
            desc = "Git";
          };
        }
        {
          mode = "n";
          key = "<leader>Gb";
          action = ''<cmd>lua Snacks.picker.git_branches()<cr>'';
          options = {
            desc = "Git branches";
          };
        }
        {
          mode = "n";
          key = "<leader>Gc";
          action = ''<cmd>lua Snacks.picker.git_log()<cr>'';
          options = {
            desc = "Git commits";
          };
        }
        {
          mode = "n";
          key = "<leader>Gs";
          action = ''<cmd>lua Snacks.picker.git_status()<cr>'';
          options = {
            desc = "Git status";
          };
        }
        {
          mode = "n";
          key = "<leader>GS";
          action = ''<cmd>lua Snacks.picker.git_stash()<cr>'';
          options = {
            desc = "Git stashes";
          };
        }
        {
          mode = "n";
          key = "<leader>Gl";
          action = ''<cmd>lua Snacks.picker.git_log()<cr>'';
          options = {
            desc = "Git log";
          };
        }
        {
          mode = "n";
          key = "<leader>GL";
          action = ''<cmd>lua Snacks.picker.git_log_line()<cr>'';
          options = {
            desc = "Git log line";
          };
        }
        {
          mode = "n";
          key = "<leader>Gd";
          action = ''<cmd>lua Snacks.picker.git_diff()<cr>'';
          options = {
            desc = "Git diff (hunks)";
          };
        }
        {
          mode = "n";
          key = "<leader>Gf";
          action = ''<cmd>lua Snacks.picker.git_log_file()<cr>'';
          options = {
            desc = "Git log file";
          };
        }
      ];
}
