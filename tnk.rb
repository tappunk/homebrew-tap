class Tnk < Formula
  desc "Per-project sandbox VMs for AI agent runtimes"
  homepage "https://tappunk.com"
  version "0.1.53"

  depends_on arch: :arm64
  depends_on "lima"

  url "https://github.com/tappunk/tnk/releases/download/v#{version}/tnk-#{version}-bin-macos-arm64.tar.gz"
  sha256 "668ab89bf3750003131f4793ac8a0a827c6f56f84dd05e59acd4c1e5d27e8c17"

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
