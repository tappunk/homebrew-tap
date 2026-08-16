class Gre < Formula
  desc "A super-fast multi-repo git recap for AI agents and speed-obsessed humans"
  homepage "https://github.com/tappunk/gre"
  license "MIT"
  version "0.1.17"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gre/releases/download/v#{version}/gre-#{version}-bin-macos-arm64.tar.gz"
  sha256 "7090e8a26e97b362773037c083c34b99e196358326427822f153a3d89a3223cc"

  def install
    bin.install "gre"
  end

  test do
    (testpath/"config.toml").write <<~EOS
      paths = ["#{testpath}"]
    EOS
    output = shell_output("#{bin}/gre --config #{testpath}/config.toml --json")
    assert_match '"schema_version": "3"', output
    assert_match '"summary"', output
    assert_match '"repos"', output
  end
end
