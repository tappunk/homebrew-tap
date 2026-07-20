class Utmd < Formula
  desc "Minimalist developer sandbox and disposable VM manager for UTM on macOS"
  homepage "https://github.com/tappunk/utmd"
  version "0.1.10"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/utmd/releases/download/v#{version}/utmd-#{version}-bin-macos-arm64.tar.gz"
  sha256 "9c1bfa7a6e93cc80856975141774fc84e48876d370cf6c7088aa5d2261ee07c6"

  def install
    bin.install "utmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/utmd --version")
  end
end
