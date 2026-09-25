class Litty < Formula
  desc "Tiny, fast, zero-config terminal emulator"
  homepage "https://github.com/stawan15/litty"
  version "0.3.1"
  license "MIT"

  # macOS users: `brew install --cask stawan15/tap/litty` (the app bundle).
  depends_on :linux

  on_intel do
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "54222e6f941d54f9129ac1b216ba45063b8802076328326bec9b469bad9d8e71"
  end
  on_arm do
    url "https://github.com/stawan15/litty/releases/download/v#{version}/litty-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0489f662ef59e069ba7f8b738f6e9aab2635579ca12e187df997720e6327eb6e"
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
