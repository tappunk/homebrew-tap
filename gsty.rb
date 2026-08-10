class Gsty < Formula
  desc "Ghostty live preview theme browser and installer TUI"
  homepage "https://github.com/richalaleman/gsty"
  license "MIT"
  version "0.1.11"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/richalaleman/gsty/releases/download/v#{version}/gsty-#{version}-bin-macos-arm64.tar.gz"
  sha256 "7c9747dca3a8340781eb3c4476637a03620172320317d062f54b5bac6a18fa5c"

  def install
    bin.install "gsty"
  end

  test do
    output = shell_output("#{bin}/gsty --help")
    assert_match "Ghostty theme browser and installer", output
    assert_match "gsty --list", output
  end
end
