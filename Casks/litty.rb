cask "litty" do
  version "0.8.0"
  sha256 "b2b258e318a5734ae4a2a461e2e1f379c68dffe7d1efb09a42e588f12d000fbd"

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
