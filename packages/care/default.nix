{
  pkgs,
  inputs,
  opts,
  ...
}:
pkgs.vimUtils.buildVimPlugin {
  name = "care";
  src = inputs.care;
}
