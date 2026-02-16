{ config
, lib
, pkgs
, options
, ...
}:
{
  extraPlugins = with pkgs; [
    pkgs.plusultra.tree-sitter-cpp2
  ];

  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
      };
      folding.enable = true;
      nixvimInjections = true;
      grammarPackages = config.plugins.treesitter.package.passthru.allGrammars ++ [
        pkgs.plusultra.tree-sitter-cpp2
      ];
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>xt";
      action = "";
      options = {
        desc = "Treesitter";
      };
    }
    {
      mode = "n";
      key = "<leader>xth";
      action = "<cmd>Inspect<cr>";
      options = {
        desc = "Treesitter: Inspect";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      action = "<cmd>InspectTree<cr>";
      key = "<leader>xtP";
      options = {
        desc = "Treesitter: inspect tree";
        silent = true;
        noremap = true;
      };
    }
  ];
}
