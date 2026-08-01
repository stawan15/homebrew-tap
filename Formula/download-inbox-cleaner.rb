class DownloadInboxCleaner < Formula
    desc "Cautious macOS command-line tool for reviewing and organizing Downloads"
    homepage "https://github.com/stawan15/Download-scanner"
  url "https://github.com/stawan15/Download-scanner/releases/download/v1.1.0/Download-scanner_1.1.0_darwin_arm64.tar.gz"
  sha256 "46f8174ea5e27ae6c04324337c4eb1d43a5ef0c75a3af9dfd3113a23a5cc6fc3"
  version "1.1.0"

    def install
      bin.install "cleaner"
    end

    test do
      system "#{bin}/cleaner", "version"
    end
  end
