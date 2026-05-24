class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.1/eeco_v2.8.1_darwin_arm64.tar.gz"
      sha256 "dfa74ae4cdc9a0b2e4d05db328a295f8152a293b525889d7dbff4679e8e27092"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.1/eeco_v2.8.1_darwin_amd64.tar.gz"
      sha256 "862b2fc02e20b93e59c43d7fe3472f4812a1f50f0ff3d0769bcb7424ef879b9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.1/eeco_v2.8.1_linux_arm64.tar.gz"
      sha256 "24d80896259ff9fa4810097e4accd690a82dd2b3aa1fd1f41777cdc75204a018"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.1/eeco_v2.8.1_linux_amd64.tar.gz"
      sha256 "8a38ec09b3a7fee796dc1fd36e03718401a3bb0f2e9f9af34182bcb11b1cb343"
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
