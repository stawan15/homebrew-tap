cask "litty" do
  version "0.4.0"
  sha256 "612eee1806914cbfcf2a364e45e4e8d33344d706157517a08ef848651b39e2ca"

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
