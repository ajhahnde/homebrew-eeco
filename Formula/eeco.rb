class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.10.0/eeco_v2.10.0_darwin_arm64.tar.gz"
      sha256 "3d687cba4c28c92d3fa80201613de9a018b80c98c745f659bc91ee037579fc21"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.10.0/eeco_v2.10.0_darwin_amd64.tar.gz"
      sha256 "56ad2f18373d75c6a3d29459f9c198e79e10e6ec90de61c9b9f5a7eec27c89a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.10.0/eeco_v2.10.0_linux_arm64.tar.gz"
      sha256 "84303ce16ed2b61dc0ce4b3b14750c1c7b9f2daab1954abd05a83cbd4d0de11d"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.10.0/eeco_v2.10.0_linux_amd64.tar.gz"
      sha256 "f537cf79367afa09e88b77b5a1f7aed27e2b1ae2b2a54866acb4d58e0705a5d8"
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
