class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VM manager for UTM on macOS"
  homepage "https://github.com/tappunk/utmd"
  version "0.1.9"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "2efe0eab868260830605d76cf8b3bf0dd0c39061fdec211e3ac541262745ba5b"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
