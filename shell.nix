{ pkgs ? import ./nix }:
let
  inherit (pkgs) mkShell ocamlPackages fswatch opam;
in
pkgs.mkShell {
  buildInputs = with ocamlPackages; [
    base
    dream
    dune_3
    findlib
    fmt
    fswatch
    merlin
    ocaml
    ocamlformat
    ocaml-lsp
    opam
    ppx_deriving
    ppx_inline_test
    ppx_show
    stdcompat
    utop
  ];
}
