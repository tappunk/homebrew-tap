class Tnk < Formula
  desc "Zero-trust sandbox for local inference and secure AI coding agent runtimes"
  homepage "https://tappunk.com"
  version "0.1.21"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lima"
  depends_on "llama.cpp"

  url "https://github.com/tappunk/tnk/releases/download/v#{version}/tnk-#{version}-bin-macos-arm64.tar.gz"
  sha256 "9295499c31499fb97b9dcf92fb7531fd10b5bc7f4a5902b614abde22c7b19f0d"

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
