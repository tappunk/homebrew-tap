class Gre < Formula
  desc "Super fast git recap for multiple repositories"
  homepage "https://github.com/tappunk/gre"
  version "0.1.9"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gre/releases/download/v#{version}/gre-#{version}-bin-macos-arm64.tar.gz"
  sha256 "80a0081afbf9a3765f9a22df798eaf4f4b6cea7c274246c056ccdb1e829d1c91"

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
