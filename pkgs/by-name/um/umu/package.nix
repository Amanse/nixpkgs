{stdenv, pkgs, fetchFromGitHub, ...}:
stdenv.mkDerivation {
  pname = "umu-launcher";
  version = "0.1-RC4";

  src = fetchFromGitHub {
    owner = "Open-Wine-Components";
    repo = "umu-launcher";
    rev = "0.1-RC4";
    sha256 = "sha256-uS3xmTu+LrVFX93bYcJvYjl6179d3IjpxLKrOXn8Z8Y=";
  };

  depsBuildBuild = [
    pkgs.meson
    pkgs.ninja
    pkgs.scdoc
  ];

  dontUseMesonConfigure = true;
  dontUseNinjaBuild = true;
  dontUseNinjaInstall = true;
  dontUseNinjaCheck = true;
  configureScript = "/configure.sh";
}