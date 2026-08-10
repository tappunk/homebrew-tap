class Gre < Formula
  desc "A super-fast multi-repo git recap for AI agents and speed-obsessed humans"
  homepage "https://github.com/richalaleman/gre"
  license "MIT"
  version "0.1.14"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/richalaleman/gre/releases/download/v#{version}/gre-#{version}-bin-macos-arm64.tar.gz"
  sha256 "02465361d9f0c8fca6af8af112c51dbf6aaf80a3cd5313800ebd3744ffd3f48a"

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
