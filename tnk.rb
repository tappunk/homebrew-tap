class Tnk < Formula
  desc "Zero-trust sandbox for local inference and secure AI coding agent runtimes"
  homepage "https://richalaleman.github.io"
  version "0.1.40"

  depends_on arch: :arm64
  depends_on "lima"
  depends_on "llama.cpp"

  url "https://github.com/richalaleman/tnk/releases/download/v#{version}/tnk-#{version}-bin-macos-arm64.tar.gz"
  sha256 "50aeb6880d056abe6fc9a7dce2e6422f07b37ecdc3bb40406b2a4b7ee32f8f8e"

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
