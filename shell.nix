with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    texlive.combined.scheme-full
  ];
}
