class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.11.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.1/eeco_v2.11.1_darwin_arm64.tar.gz"
      sha256 "0fdc4bc466ba4092b3cb54788b91d5fcb6e828c2a1a0d2c8343d1016db3d0eae"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.1/eeco_v2.11.1_darwin_amd64.tar.gz"
      sha256 "c94f861a7345c8790084be7929e1edbbd9c61690c32f523e5edf552611738c33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.1/eeco_v2.11.1_linux_arm64.tar.gz"
      sha256 "e9d95e2cb398bf451010ea54df3b123cd592a145b42b7ecc7a12731fda83b79d"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.1/eeco_v2.11.1_linux_amd64.tar.gz"
      sha256 "ea99208405ab0d06e43a9e23ad0123317b157fbc62471d497d52948c69293e9b"
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
