class Gsty < Formula
  desc "Ghostty live preview theme browser and installer TUI"
  homepage "https://github.com/tappunk/gsty"
  version "0.1.9"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gsty/releases/download/v#{version}/gsty-#{version}-bin-macos-arm64.tar.gz"
  sha256 "9f13918ac1b450b63d5e98743d3cad42af2455d5f6e07f9bc1fc4bbfbc94ae8c"

  def install
    bin.install "gsty"
  end

  test do
    output = shell_output("#{bin}/gsty --help")
    assert_match "Ghostty theme browser and installer", output
    assert_match "gsty --list", output
  end
end
