cask "simpledesktoprenamer" do
  version "2.3.4"
  sha256 "38f4434f19b77f6919e3e852ea39c17d2961b99d6aef60a7a6fe1444dd050c99"

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
