class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.6.0/eeco_v1.6.0_darwin_arm64.tar.gz"
      sha256 "7fda68e8f897a35126e8ed53ab717e27feb65e4b48f4986db34c51090201c979"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.6.0/eeco_v1.6.0_darwin_amd64.tar.gz"
      sha256 "91472b955999523d9bc7a7d76646cb68db7664c4a3b6b8e654672018b23695cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.6.0/eeco_v1.6.0_linux_arm64.tar.gz"
      sha256 "934036ff6928974e927b0132e7fcec18e243821dde354be7fe4a7fa301b54d32"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.6.0/eeco_v1.6.0_linux_amd64.tar.gz"
      sha256 "f91cab225186c9db2e425873d2a97c7b77435503447fe93fe1e4a4ad47ccd41e"
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
