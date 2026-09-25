class Litty < Formula
  desc "Tiny, fast, zero-config terminal emulator"
  homepage "https://github.com/stawan15/litty"
  version "0.5.0"
  license "MIT"

  # macOS users: `brew install --cask stawan15/tap/litty` (the app bundle).
  depends_on :linux

  if Hardware::CPU.arm?
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "7ceaf9fcd19ede06077b78cd1c3a881e8bda86e87bbffca59c3cc53ec06b1b86"
  else
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4dc4067dc04f8a76a2f2ca5b7d72607fffa72fcace7d938e492fa25d5a67f12"
  end

  def install
    bin.install "litty"
    (share/"applications").install "litty.desktop"
    (share/"icons/hicolor/512x512/apps").install "litty.png"
  end

  test do
    assert_predicate bin/"litty", :executable?
  end
end
