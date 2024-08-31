let sources = import ./nix/sources.nix;
in with import sources.nixpkgs { };
let inputs = [ elixir_1_17 ];
in mkShell {
  buildInputs = inputs ++ [ inotify-tools ];

  shellHook = ''
    export TZ=UTC
  '';
}
