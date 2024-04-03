{
  buildFHSUserEnv
, libsForQt5
, pkgs
, ...
}: let
  simulide-unwrapped = libsForQt5.callPackage ./unwrapped.nix {};
in buildFHSUserEnv {
  name      = "simulide";
  runScript = "simulide";
  targetPkgs = pkgs: with pkgs; [
    arduino-core-unwrapped
    simulide-unwrapped
  ];
}
