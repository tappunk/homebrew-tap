class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VMs for UTM on macOS"
  homepage "https://github.com/tappunk/utmd"
  license "MIT"
  version "0.1.24"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "08ef6fb4409a12d393dea16021cc112703f984ac394958ba4be1dc813fe9ce56"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
