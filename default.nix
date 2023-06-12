{ nixpkgs ?  <nixpkgs> }:
with (import nixpkgs {});
agdaPackages.mkDerivation {
  version = "1.0";
  pname = "my-agda-lib";
  src = ./.;
  buildInputs = [
    agdaPackages.standard-library
  ];
}
