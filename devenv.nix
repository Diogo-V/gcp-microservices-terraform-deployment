{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.git 
    pkgs.google-cloud-sdk
    (pkgs.google-cloud-sdk.withExtraComponents [pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin])
    pkgs.clusterctl
    pkgs.kubeseal
    pkgs.wget
    pkgs.tree
    pkgs.terraform
  ];

  enterShell = ''
    hello
    git --version
  '';

  # https://devenv.sh/languages/
  languages.nix.enable = true;

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks.shellcheck.enable = false;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";
}
