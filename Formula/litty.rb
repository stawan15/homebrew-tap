class Litty < Formula
  desc "Tiny, fast, zero-config terminal emulator"
  homepage "https://github.com/stawan15/litty"
  version "0.3.3"
  license "MIT"

  # macOS users: `brew install --cask stawan15/tap/litty` (the app bundle).
  depends_on :linux

  if Hardware::CPU.arm?
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "562e4f791238202b9f2e0f5b9c9bec1d22232ede56ab49ca6dba919c070f3748"
  else
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20fa306acaaa551a067559ac9536f5879355f73b77fa4f39886d4b11a42acd9a"
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
