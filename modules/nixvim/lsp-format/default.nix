{
  plugins.lsp-format = {
    enable = true;
    lspServersToEnable = [
      "nil"
      "luals"
      #"clangd" # WARN this is very disruptive in others' codebase
    ];
  };
}
