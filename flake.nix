{
  description = "Heimdal - AI-powered Kubernetes Helm chart deployment tool using LLMs and LangChain";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    substrate = { url = "github:pleme-io/substrate"; inputs.nixpkgs.follows = "nixpkgs"; };
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "python";
    builder = "devShell";
    description = "Heimdal - AI-powered Kubernetes Helm chart deployment tool using LLMs and LangChain";
  };
}
