class Tnk < Formula
  desc "Per-project sandbox VMs for AI agent runtimes"
  homepage "https://tappunk.com"
  version "0.1.55"

  depends_on arch: :arm64
  depends_on "lima"

  url "https://github.com/tappunk/tnk/releases/download/v#{version}/tnk-#{version}-bin-macos-arm64.tar.gz"
  sha256 "91ac25048c84b0176799d86fe9d172877487c0631e0df90a5cb52b596968e5b3"

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
