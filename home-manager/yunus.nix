{ pkgs, ... }:
{
  imports = [
    ../modules/home-manager/programs/direnv.nix
    ../modules/home-manager/programs/gh.nix
    ../modules/home-manager/programs/git.nix
    ../modules/home-manager/programs/gnupg.nix
    ../modules/home-manager/programs/jq.nix
    ../modules/home-manager/programs/k9s.nix
    ../modules/home-manager/programs/nh.nix
    ../modules/home-manager/programs/obs-studio.nix
    ../modules/home-manager/programs/tmux.nix
    ../modules/home-manager/programs/vscode.nix
    ../modules/home-manager/programs/zed-editor.nix
    ../modules/home-manager/programs/zsh.nix
    ../modules/home-manager/services/gpg-agent.nix
  ];

  home = {
    stateVersion = "25.05";
    packages = with pkgs; [
      brave
      cilium-cli
      cri-tools
      discord
      helmfile
      insomnia
      iptables
      kubectl
      kubernetes
      kubernetes-helm
      lens
      mongodb-compass
      nerdctl
      nixd
      nixfmt-rfc-style
      pinentry-gnome3
      spotify
      teamspeak3
      teamspeak6-client
      vlc
    ];
  };

  programs.home-manager.enable = true;
}
