class Litty < Formula
  desc "Tiny, fast, zero-config terminal emulator"
  homepage "https://github.com/stawan15/litty"
  version "0.4.0"
  license "MIT"

  # macOS users: `brew install --cask stawan15/tap/litty` (the app bundle).
  depends_on :linux

  if Hardware::CPU.arm?
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d1a083c153ec2b4ee5fb364193c2af0861365076dc6dd414f3e3b0c1ebe4a194"
  else
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ee02027f10f9e9eb36fe7ca0874a4643ba14bedc75a131ea5abb6e725488fadb"
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
