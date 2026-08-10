class Tnk < Formula
  desc "Zero-trust sandbox for local inference and secure AI coding agent runtimes"
  homepage "https://richalaleman.github.io"
  version "0.1.38"

  depends_on arch: :arm64
  depends_on "lima"
  depends_on "llama.cpp"

  url "https://github.com/richalaleman/tnk/releases/download/v#{version}/tnk-#{version}-bin-macos-arm64.tar.gz"
  sha256 "fbae9441a62b0b47d7d7f37183e87a952bd5307802a526dcf214c5ebb90e9f2b"

  def install
    bin.install "tnk"
  end

  def caveats
    <<~EOS
      tnk configurations must be initialized before first execution. Run:
        tnk init
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tnk --version")
  end
end
