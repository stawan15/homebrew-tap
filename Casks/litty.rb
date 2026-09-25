cask "litty" do
  version "0.5.0"
  sha256 "1197949f81a080cad91487a4c87d0e8b4ba10a2f3c80c771cd7150dc6887a06a"

  url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-macos-universal.dmg"
  name "litty"
  desc "Tiny, fast, zero-config terminal emulator"
  homepage "https://github.com/stawan15/litty"

  app "litty.app"
  binary "#{appdir}/litty.app/Contents/MacOS/litty"

  # The app is ad-hoc signed, not notarized: clear the download quarantine so it opens normally.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/litty.app"]
  end

  zap trash: "~/.cache/litty"
end
