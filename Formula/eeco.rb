class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.11.0/eeco_v1.11.0_darwin_arm64.tar.gz"
      sha256 "f44de41e3fc00bc7080cd90027792284cd7e128c9e71b423a2d3ee7bb1afad44"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.11.0/eeco_v1.11.0_darwin_amd64.tar.gz"
      sha256 "452db9a061c77902862e76c9fade869481a09376c5d896f5131d24b4646ab51b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.11.0/eeco_v1.11.0_linux_arm64.tar.gz"
      sha256 "28b39a4696680f2e6b539dc0554986df7b5988ca81e2548d33397f2339b9075f"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.11.0/eeco_v1.11.0_linux_amd64.tar.gz"
      sha256 "ac3f76e2b277c38a49019286c29a78548066ecab122e6b48d2153c3bc0937bdc"
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
