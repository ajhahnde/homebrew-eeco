class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.17.0"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.17.0/eeco_v1.17.0_darwin_arm64.tar.gz"
      sha256 "5946f65f35bd1a72afe9acab73cf79e4d16efbd7d362af339f2ccb76a89498ee"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.17.0/eeco_v1.17.0_darwin_amd64.tar.gz"
      sha256 "fca2cd2c11503e849aeb5d5a86c73bbbc05791712da173f7f4c74efa37584331"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.17.0/eeco_v1.17.0_linux_arm64.tar.gz"
      sha256 "47811c997b92476ebf0f023f080b9b3cd9080f28d1504a1f522d7ecc0c4d87c7"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.17.0/eeco_v1.17.0_linux_amd64.tar.gz"
      sha256 "ce191f2e049bf096477f8036d1fbd3f5b05db807acd1dc2c4b3eaefa4ce808ba"
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
