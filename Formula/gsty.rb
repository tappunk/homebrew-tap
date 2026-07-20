class Gsty < Formula
  desc "Ghostty live preview theme browser and installer TUI"
  homepage "https://github.com/tappunk/gsty"
  version "0.1.5"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gsty/releases/download/v#{version}/gsty-#{version}-bin-macos-arm64.tar.gz"
  sha256 "5e7ca7b81249d3e31da8b422d74a2df57a4f4884c88094e5a3fd516e4840dcf7"

  def install
    bin.install "gsty"
  end

  test do
    output = shell_output("#{bin}/gsty --help")
    assert_match "Ghostty theme browser and installer", output
    assert_match "gsty --list", output
  end
end
