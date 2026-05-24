class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.0/eeco_v2.8.0_darwin_arm64.tar.gz"
      sha256 "1794073af095a4418e8e9066aae89c739ac82f7a5d198c8681f8b5edd003a76b"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.0/eeco_v2.8.0_darwin_amd64.tar.gz"
      sha256 "af4878306a10275a86f3be081cd4b6df261b01abe25d645aa394d350a14d97c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.0/eeco_v2.8.0_linux_arm64.tar.gz"
      sha256 "860d1e3957663ece68fcd334f3094bdeafd04d1534916a4201304a718936fdf2"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.0/eeco_v2.8.0_linux_amd64.tar.gz"
      sha256 "e01d7971606d3cfc49ac892c78f1ba50e01009550c20b4d97dd47214ced22fa6"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
