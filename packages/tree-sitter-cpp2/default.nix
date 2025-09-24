{ pkgs }:
pkgs.tree-sitter.buildGrammar {
  language = "cpp2";
  version = "0.1.0";

  src = pkgs.fetchFromGitHub {
    owner = "tsoj";
    repo = "tree-sitter-cpp2";
    rev = "3a9edb17ff3ce59fef5c1b427f17fa3a773b360e";
    hash = "sha256-DXl6ghZWpDPsuJenA5FMlJwOY7KDcHW1w3rudx/QxsM=";
  };

  # fixupPhase = ''
  #   mkdir -p $out/queries/norg-meta
  #   mv $out/queries/*.scm $out/queries/norg-meta/
  # '';

  meta.homepage = "https://github.com/tsoj/tree-sitter-cpp2";
}
