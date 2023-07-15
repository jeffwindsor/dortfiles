{ config, pkgs, ... }:{

  imports = [
    ./module/gnome.nix
    ./module/nixos.nix
    ./module/zsh.nix

    ./module/audio.nix
    ./module/laptop.nix
    ./module/ntfs.nix
    ./module/printing.nix

    ./hardware-configuration.nix
  ];

  networking.hostName = "frame";
  time.timeZone       = "America/Los_Angeles";
  system.stateVersion = "23.05";

  # users
  users.users.mid = {
    isNormalUser  = true;
    description   = "The Middle Way";
    extraGroups   = [ "networkmanager" "wheel" ];
  };

  # system wide packages
  environment.systemPackages = with pkgs; [

    # terminals
    alacritty
    wezterm
    st
    xterm

    # web browsers
    chromium
    firefox
    google-chrome
    librewolf

    # fonts
    jetbrains-mono

    # dotfile management
    #chezmoi
    yadm

    # editors
    helix
    neovim

    # source control
    git
    gitui

    # new hotness command line utils
    bat           # cat
    exa           # ls
    fd            # find
    freshfetch    # neofetch replacement
    fzf           # fuzzy finder
    gcc           # c compiler
    ripgrep       # grep
    sd            # sed
    starship      # prompt
    tealdeer      # tldr
    xplr          # tui file explorer
    zellij        # tmux

    # applications
    audacity      # sound engineering
    gimp          # image manipulation
    gnucash       # double entry accounting
    libreoffice   # office suite
    megasync      # cloud storage
    newsflash     # rss
    obsidian      # markdown editor
    spotify       # music service
    transmission-gtk  # bit torrent
    vlc           # media player

  ];

}
