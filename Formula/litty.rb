class Litty < Formula
  desc "Tiny, fast, zero-config terminal emulator"
  homepage "https://github.com/stawan15/litty"
  version "0.6.0"
  license "MIT"

  # macOS users: `brew install --cask stawan15/tap/litty` (the app bundle).
  depends_on :linux

  if Hardware::CPU.arm?
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3ea5b119279f4617d67ae5394a732dbedf066e6bc1d7e182ea6582807aa60662"
  else
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "599e48f263541c18e0321d017d1b8590ce65a700e197bc8f79fcc7d81b201489"
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
