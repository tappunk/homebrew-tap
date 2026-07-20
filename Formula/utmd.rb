class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VM manager for UTM on macOS"
  homepage "https://github.com/tappunk/utmd"
  version "0.1.11"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "649662c58c50321406aae2bd60e81cd1668911e3d49d09518960315bed60f788"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
