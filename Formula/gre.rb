class Gre < Formula
  desc "Super fast git recap for multiple repositories"
  homepage "https://github.com/tappunk/gre"
  version "0.1.10"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/tappunk/gre/releases/download/v#{version}/gre-#{version}-bin-macos-arm64.tar.gz"
  sha256 "4949e57ff8a9bdcc66f62e1ec70bc1fd18d4a4252a09e6e55060cf659b9951d7"

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
