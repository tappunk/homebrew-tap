class Gsty < Formula
  desc "Ghostty live preview theme browser and installer TUI"
  homepage "https://github.com/tappunk/gsty"
  version "0.1.7"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gsty/releases/download/v#{version}/gsty-#{version}-bin-macos-arm64.tar.gz"
  sha256 "4a8a8cfc2e212cfb073a1bfecc140a32b51505ab1cd37eda39430158adaeeb4c"

  def install
    bin.install "gsty"
  end

  test do
    output = shell_output("#{bin}/gsty --help")
    assert_match "Ghostty theme browser and installer", output
    assert_match "gsty --list", output
  end
end
