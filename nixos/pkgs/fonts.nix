{
  config,
  pkgs,
  ...
}: {
  nixpkgs = {
    config = {
      joypixels = {
        acceptLicense = true;
      };
    };
  };

  fonts = {
    packages = with pkgs; [
      arkpandora_ttf
      comic-mono
      dejavu_fonts
      dina-font
      fira-code
      fira-code-symbols
      jetbrains-mono
      joypixels
      hack-font
      liberation_ttf
      mplus-outline-fonts.githubRelease
      nerdfonts
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      openmoji-color
      proggyfonts
      roboto
      symbola
      twemoji-color-font
      twitter-color-emoji
      ubuntu_font_family
      vegur
    ];
  };
}
