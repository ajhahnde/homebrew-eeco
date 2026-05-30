class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.14.0"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.0/eeco_v1.14.0_darwin_arm64.tar.gz"
      sha256 "11c4a89d7401566d1946e72a9d7003e1d4277cc81c1ea836ebd156cbd3472353"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.0/eeco_v1.14.0_darwin_amd64.tar.gz"
      sha256 "59adf1c1275188e98d1f9e1cff241c75311cd16882fcfb3b0e4e2859aa784c32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.0/eeco_v1.14.0_linux_arm64.tar.gz"
      sha256 "e73616c1d3fa8f5b35a9e7c611da013162f87b0c95c4ebdcef202407485a3fc2"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.0/eeco_v1.14.0_linux_amd64.tar.gz"
      sha256 "6e07b9c993ab14d65f1a6717672048457aa1843bd29fd105fd01e34a208e9268"
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
