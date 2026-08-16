class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VMs for UTM on macOS"
  homepage "https://github.com/tappunk/utmd"
  license "MIT"
  version "0.1.16"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "2873502998efbe51dc82473a0a443664da8bb9ea7ec8e6c6e9ab0db957b64699"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
