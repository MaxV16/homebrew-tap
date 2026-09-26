cask "simpledesktoprenamer" do
  version "2.3.7"
  sha256 "06ab01e17d649157b5e756cc82d0b9cea7c873b2f4abd46a665f64830b1292b5"

  url "https://github.com/MaxV16/SimpleDesktopRenamer/releases/download/v#{version}/SimpleDesktopRenamer.zip"
  name "SimpleDesktopRenamer"
  desc "Rename and switch macOS desktop spaces from the menu bar"
  homepage "https://github.com/MaxV16/SimpleDesktopRenamer"

  app "SimpleDesktopRenamer.app"

  caveats <<~EOS
    SimpleDesktopRenamer is unsigned and not notarized, so macOS blocks it on
    first launch. Remove the quarantine attribute to allow it to run:

      xattr -dr com.apple.quarantine "#{appdir}/SimpleDesktopRenamer.app"

    Then grant Accessibility permission under:
      System Settings > Privacy & Security > Accessibility

    Accessibility access is required to read and switch desktop spaces.
  EOS
end
