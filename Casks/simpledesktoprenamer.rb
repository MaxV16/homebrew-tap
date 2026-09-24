cask "simpledesktoprenamer" do
  version "2.3.1"
  sha256 "810e9096286aa47be2d72ca9b8e8a6813abd8ea81e22fadfc7fc7bb2273e98db"

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
