class DownloadInboxCleaner < Formula
    desc "Cautious macOS command-line tool for reviewing and organizing Downloads"
    homepage "https://github.com/stawan15/Download-scanner"
    url "https://github.com/stawan15/Download-scanner/releases/download/v1.0.0/Download-scanner_1.0.0_darwin_arm64.tar.gz"
    sha256 "85ccc3825a3d78b9723db05971d7a2f26f5b20e464d1250b2a54135600740c09"
    version "1.0.0"

    def install
      bin.install "cleaner"
    end

    test do
      system "#{bin}/cleaner", "version"
    end
  end
