class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.1/eeco_v1.0.1_darwin_arm64.tar.gz"
      sha256 "331328e72e9e197cb161796885e02a2ca93154146d61d9dddb4c0182caff5d71"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.1/eeco_v1.0.1_darwin_amd64.tar.gz"
      sha256 "844d6e07a4867a5e2e16272b387847fcaa24157038b1b9ffb3fd85d74e09b230"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.1/eeco_v1.0.1_linux_arm64.tar.gz"
      sha256 "281748fa2b7c9940e4d1054570a792192d6fc8502120ebdc3f0f9d0d845c570f"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.1/eeco_v1.0.1_linux_amd64.tar.gz"
      sha256 "1403bebf1dd00f3f74e3234c86d3be3ccb799d81ae1a7d22c401777a35a7ae9f"
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
