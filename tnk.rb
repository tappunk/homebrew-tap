class Tnk < Formula
  desc "Zero-trust sandbox for local inference and secure AI coding agent runtimes"
  homepage "https://tappunk.com"
  version "0.1.33"

  depends_on arch: :arm64
  depends_on "lima"
  depends_on "llama.cpp"

  url "https://github.com/tappunk/tnk/releases/download/v#{version}/tnk-#{version}-bin-macos-arm64.tar.gz"
  sha256 "771d7a0a445db5df9850e9dd46db9fe731d054424cbc1b2f5c8f6931f8486402"

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
