class Gre < Formula
  desc "Super fast git recap for multiple repositories"
  homepage "https://github.com/tappunk/gre"
  version "0.1.8"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gre/releases/download/v#{version}/gre-#{version}-bin-macos-arm64.tar.gz"
  sha256 "60704210cce8fbe77d78bd3af4c3efb742c41946e9d5fe9454e8bae14809fc9b"

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
