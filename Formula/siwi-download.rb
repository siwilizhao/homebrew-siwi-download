# typed: false
# frozen_string_literal: true

class SiwiDownload < Formula
  desc "Downloader with pure HTTP implementation supporting breakpoint continuation"
  homepage "https://github.com/rs-videos/siwi-download"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/rs-videos/siwi-download/releases/download/v1.0.0/siwi-download-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "8fb7e0bdf4531246367ecadb6f7ae4d474ff03b601f304c0a2c0be068c83be07"
    end
    on_intel do
      url "https://github.com/rs-videos/siwi-download/releases/download/v1.0.0/siwi-download-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "siwi-download"
  end

  test do
    assert_match version, shell_output("#{bin}/siwi-download --version").strip
  end
end
