{ stdenv, fetchurl }:

stdenv.mkDerivation {
  pname = "darwin-stubs";
  version = "10.12";

  src = fetchurl {
    url = "https://github.com/NixOS/darwin-stubs/archive/80b3d4a57d3454c975eefd984c804dbd76f04ef2.tar.gz";
    sha256 = "sha256-+N5xlrOSKbYy7sUwVS0ZBkeB96qwdBQEPVQ2rQV+me4=";
  };

  dontBuild = true;

  installPhase = ''
    mkdir $out
    cp -vr stubs/$version/* $out
  '';
}
