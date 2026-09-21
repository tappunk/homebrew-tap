class Tnk < Formula
  desc "Per-project sandbox VMs for AI agent runtimes"
  homepage "https://tappunk.com"
  version "0.1.54"

  depends_on arch: :arm64
  depends_on "lima"

  url "https://github.com/tappunk/tnk/releases/download/v#{version}/tnk-#{version}-bin-macos-arm64.tar.gz"
  sha256 "80b2b3b9857dae704abe9236994c3076192a3b8c309056950fad5be4c1fc4817"

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
