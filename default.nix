{ pkgs ? import <nixpkgs> { }
}:

pkgs.stdenvNoCC.mkDerivation {
  name = "zshrc";
  phases = [ "unpackPhase" "installPhase" "fixupPhase" ];
  src = ./.;

  installPhase = ''
    mkdir -p $out/bin
    install -m 0555 bin/sshfs $out/bin/sshfs
  '';
}
