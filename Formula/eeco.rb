class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.6.0/eeco_v2.6.0_darwin_arm64.tar.gz"
      sha256 "90cd6f5927304394405eaa86f3a0354280d7d8bd2d6ae0027590e509d6bd23e3"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.6.0/eeco_v2.6.0_darwin_amd64.tar.gz"
      sha256 "59da0d5b4fd18d0c790a1f7803cb7252bb553f0febdb99b04d239d9183f690c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.6.0/eeco_v2.6.0_linux_arm64.tar.gz"
      sha256 "cf81b29549e97ce5126817f235d2d70e365f4723ee81c3e20df1a41ed11e410d"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.6.0/eeco_v2.6.0_linux_amd64.tar.gz"
      sha256 "87c22bb53cf3c3b06faf6669056ce662e6441648397a9d0d4aa43c69a958115c"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
