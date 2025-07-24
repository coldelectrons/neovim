{
  pkgs,
  inputs,
  opts,
  ...
}:
pkgs.vimUtils.buildVimPlugin {
  name = "tokyodark";
  src = inputs.tokyodark;
}
