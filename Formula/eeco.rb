class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.15.0"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.15.0/eeco_v1.15.0_darwin_arm64.tar.gz"
      sha256 "3071568d194bf52f16c76246a404ba65d3572a2f38aac29d0c5dbac55645b279"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.15.0/eeco_v1.15.0_darwin_amd64.tar.gz"
      sha256 "e767c07c6ce89e5e139b6cd8b85606a6b6d4d893402bdd8a743b67c10088c0b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.15.0/eeco_v1.15.0_linux_arm64.tar.gz"
      sha256 "2c0577a7edde2be88f9bfb8efdc78888656618e4ca734047308668cc80278c35"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.15.0/eeco_v1.15.0_linux_amd64.tar.gz"
      sha256 "65506959a0a51d3988e600900bd9353cf67e5079dabfcf431a6de2f8b147232d"
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
