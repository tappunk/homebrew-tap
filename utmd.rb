class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VMs for UTM on macOS"
  homepage "https://github.com/tappunk/utmd"
  version "0.1.14"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "03d26df32f50226ca1ae23784ad957d6d90ba965308b186adc02ea32352eba09"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
