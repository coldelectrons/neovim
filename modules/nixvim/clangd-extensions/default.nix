{ config, ... }:
{
  plugins = {
    lz-n = {
      enable = true;
      plugins = [
        {
          __unkeyed-1 = "clangd-extensions";
          cmd = [
            "ClangdAST"
            "ClangdTypeHierarchy"
            "ClangdSymbolInfo"
            "ClangdMemoryUsage"
            "ClangdSwitchSourceHeader"
          ];
        }
      ];
    };
    clangd-extensions = {
      # lazyLoad.settings.cmd = [
      #   "ClangdAST"
      #   "ClangdTypeHierarchy"
      #   "ClangdSymbolInfo"
      #   "ClangdMemoryUsage"
      #   "ClangdSwitchSourceHeader"
      # ];

      inherit (config.plugins.treesitter) enable;
      enableOffsetEncodingWorkaround = true;

      settings = {
        ast = {
          roleIcons = {
            type = "";
            declaration = "";
            expression = "";
            specifier = "";
            statement = "";
            templateArgument = "";
          };
          kindIcons = {
            compound = "";
            recovery = "";
            translationUnit = "";
            packExpansion = "";
            templateTypeParm = "";
            templateTemplateParm = "";
            templateParamObject = "";
          };
        };
      };
    };
  };
}
