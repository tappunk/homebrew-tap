class Gre < Formula
  desc "A super-fast multi-repo git recap for AI agents and speed-obsessed humans"
  homepage "https://github.com/tappunk/gre"
  version "0.1.13"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gre/releases/download/v#{version}/gre-#{version}-bin-macos-arm64.tar.gz"
  sha256 "115b27470751a17c1bb0e5276886aefc56d3eac54e0a90d156b957c389845867"

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
