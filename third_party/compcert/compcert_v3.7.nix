with import <nixpkgs> {};

stdenv.mkDerivation {
	name = "ccomp-v3.7";
	buildInputs = []
	++ (with coqPackages_8_10; [ coq ssreflect ])
        ++ (with ocamlPackages; [ ocaml findlib ocamlbuild menhir ])
	;
}
