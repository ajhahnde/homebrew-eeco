class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.0/eeco_v1.0.0_darwin_arm64.tar.gz"
      sha256 "19f5b3266d527610093a55354737de21bcb5f424c1c691f6d40f5e976f81c632"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.0/eeco_v1.0.0_darwin_amd64.tar.gz"
      sha256 "6ac164487b08282a462af5310bb4143da8b5b872ed578a44997faa20e72621a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.0/eeco_v1.0.0_linux_arm64.tar.gz"
      sha256 "1efb1908068f79cf3b51652362d13b12f66543367ed49d3564786432255b87ee"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.0.0/eeco_v1.0.0_linux_amd64.tar.gz"
      sha256 "4b9584df7be8b381fad725b30f6475f43ef76823c5b0dd60fea0665b568986af"
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
