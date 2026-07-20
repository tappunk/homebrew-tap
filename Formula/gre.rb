class Gre < Formula
  desc "Super fast git recap for multiple repositories"
  homepage "https://github.com/tappunk/gre"
  version "0.1.7"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gre/releases/download/v#{version}/gre-#{version}-bin-macos-arm64.tar.gz"
  sha256 "36586ccc2d0a1d52d0d5fd1487023b06456f7c661d5f91b00bd40128f5c8ca7a"

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
