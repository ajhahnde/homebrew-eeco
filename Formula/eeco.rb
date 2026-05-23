class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.4.0/eeco_v2.4.0_darwin_arm64.tar.gz"
      sha256 "bb07db4e18a836d42686eec7acc162753728c04026f75c2aafa1a0c622b34c60"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.4.0/eeco_v2.4.0_darwin_amd64.tar.gz"
      sha256 "d9d3f2f7608756ddd9c03d54123b1625afe6a55a64bb48acae3c35fff7d477dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.4.0/eeco_v2.4.0_linux_arm64.tar.gz"
      sha256 "9b21ae766f24bcc62e11deb5e3d75df59807152384ad5b964427df6b5515e9bc"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.4.0/eeco_v2.4.0_linux_amd64.tar.gz"
      sha256 "887d54008dbb9ae170936ba5e5b58447231f02354078bee8aae30f438334cac7"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
