class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VMs for UTM on macOS"
  homepage "https://github.com/richalaleman/utmd"
  license "MIT"
  version "0.1.15"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/richalaleman/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "3627e4cfa9ff0ebfbaabd9c71f2e22d2b38d4ff9757fc4d02812ff667f9214a9"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
