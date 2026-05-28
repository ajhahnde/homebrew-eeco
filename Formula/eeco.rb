class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.1.0/eeco_v1.1.0_darwin_arm64.tar.gz"
      sha256 "5158b5f01727fadd984bb71baa2a2c2eaa466a991264e65726809597dd0fa7ec"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.1.0/eeco_v1.1.0_darwin_amd64.tar.gz"
      sha256 "16101abc41b4c6305ce325039399110a59f977965ce8a50dd8c099a3b7df7d4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.1.0/eeco_v1.1.0_linux_arm64.tar.gz"
      sha256 "5729571cb1b9402f30d19aabc33f3c5002fddaaec9865a0f014337c69d4fe2e6"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.1.0/eeco_v1.1.0_linux_amd64.tar.gz"
      sha256 "dd41ae069d844e2140bc60f074c9fa2646e8b2514259c7fba27e3e0881780e0a"
    end
  end

  def install
    bin.install "eeco"
    man1.install "eeco.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
