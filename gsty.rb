class Gsty < Formula
  desc "Ghostty live preview theme browser and installer TUI"
  homepage "https://github.com/richalaleman/gsty"
  license "MIT"
  version "0.1.12"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/richalaleman/gsty/releases/download/v#{version}/gsty-#{version}-bin-macos-arm64.tar.gz"
  sha256 "f50f8456230e4082db8ffb8c5145c282e1e4417db487271ba7a97c693ee0edd3"

  def install
    bin.install "gsty"
  end

  test do
    output = shell_output("#{bin}/gsty --help")
    assert_match "Ghostty theme browser and installer", output
    assert_match "gsty --list", output
  end
end
