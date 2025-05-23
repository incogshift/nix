{ nix-flatpak, lib, ... }:

{
  services.flatpak = {
    enable = true;
    remotes = lib.mkOptionDefault [{
      name = "flathub-beta";
      location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
    }];
    packages = [
      "io.itch.itch"
      "com.github.hluk.copyq"
    ];
    update.auto.enable = true;
  };
}
