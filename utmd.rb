class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VMs for UTM on macOS"
  homepage "https://github.com/tappunk/utmd"
  version "0.1.13"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "15eb868dd97d1f5c7b4d46fba47d1eefc70dff4bfdc4bcad1daddfb6b26ad0d1"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
