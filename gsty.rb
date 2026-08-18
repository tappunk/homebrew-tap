class Gsty < Formula
  desc "Ghostty live preview theme browser and installer TUI"
  homepage "https://github.com/tappunk/gsty"
  license "MIT"
  version "0.1.14"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gsty/releases/download/v#{version}/gsty-#{version}-bin-macos-arm64.tar.gz"
  sha256 "bd7bc84caa7397329b7a75e51dc8ff4fab85ee2572a0ed0f5c44d00c8ee09fdb"

  def install
    bin.install "gsty"
  end

  test do
    output = shell_output("#{bin}/gsty --help")
    assert_match "Ghostty theme browser and installer", output
    assert_match "gsty --list", output
  end
end
