{ config, ... }:
{
  plugins = {
    # lz-n = {
    #   enable = true;
    #   plugins = [
    #     {
    #       __unkeyed-1 = "clangd-extensions";
    #       cmd = [
    #         "ClangdAST"
    #         "ClangdTypeHierarchy"
    #         "ClangdSymbolInfo"
    #         "ClangdMemoryUsage"
    #         "ClangdSwitchSourceHeader"
    #       ];
    #     }
    #   ];
    # };
    clangd-extensions = {


      inherit (config.plugins.treesitter) enable;
      enableOffsetEncodingWorkaround = true;

      lazyLoad.settings.ft = [
        "c"
        "cpp"
      ];

      # settings = {
      #   ast = {
      #     roleIcons = {
      #       type = "";
      #       declaration = "";
      #       expression = "";
      #       specifier = "";
      #       statement = "";
      #       templateArgument = "";
      #     };
      #     kindIcons = {
      #       compound = "";
      #       recovery = "";
      #       translationUnit = "";
      #       packExpansion = "";
      #       templateTypeParm = "";
      #       templateTemplateParm = "";
      #       templateParamObject = "";
      #     };
      #   };
      # };
    };
  };
}
