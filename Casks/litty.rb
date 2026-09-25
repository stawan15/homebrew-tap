cask "litty" do
  version "0.6.0"
  sha256 "42e807137c8f2bd705b7ba2f87906b55488f2c8c2fea2dc2b349160dd373cdad"

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
