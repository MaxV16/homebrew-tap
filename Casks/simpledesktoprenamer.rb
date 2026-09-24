cask "simpledesktoprenamer" do
  version "2.3.0"
  sha256 "470e7b31e865e7182cde8c5ed76cc77596e430d7d1173090a091056f4964a101"

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
