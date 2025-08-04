{ lib, config,... }:
# let
#   cfg = config.${namespace}.nixvim.todo-comments;

#   cfgTelescopeEna = config.plugins.telescope.enable;
#   cfgTroubleEna = config.plugins.trouble.enable;
#   TelescopeLoad = lib.optionalString cfgTelescopeEna ''require("lz.n").trigger_load("telescope")'';
#   TroubleLoad = lib.optionalString cfgTroubleEna ''require("lz.n").trigger_load("trouble.nvim")'';
# in
{
  plugins.todo-comments = {
    enable = true;

    settings = {
      signs = true;

      highlight = {
        multiline = true;
        pattern = ''.*<(KEYWORDS)\s*:'';
        before = "fg";
      };

      search = {
        pattern = ''\b(KEYWORDS):'';
      };

      mergeKeywords = true;

      # keywords = {
      #   FIX = {
      #     icon = " ";
      #     color = "error";
      #     alt = [
      #       "FIXME"
      #       "BUG"
      #       "FIXIT"
      #       "ISSUE"
      #     ];
      #   };
      #   TODO = {
      #     icon = " ";
      #     color = "todo";
      #   };
      #   HACK = {
      #     icon = " ";
      #     color = "error";
      #     alt = [
      #       "HACK"
      #       "DRAGONS"
      #     ];
      #   };
      #   WARN = {
      #     icon = " ";
      #     color = "warning";
      #     alt = [
      #       "WARNING"
      #       "WARNING"
      #       "WARN"
      #     ];
      #   };
      #   PERF = {
      #     icon = " ";
      #     color = "info";
      #     alt = [
      #       "OPTIM"
      #       "PERFORMANCE"
      #       "OPTIMIZE"
      #       "PERF"
      #       "PERFORMANCE"
      #     ];
      #   };
      #   NOTE = {
      #     icon = " ";
      #     color = "hint";
      #     alt = [
      #       "INFO"
      #       "NOTE"
      #       "INFO"
      #     ];
      #   };
      # };
    };
  };
}
