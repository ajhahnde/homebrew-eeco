class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.2.0/eeco_v2.2.0_darwin_arm64.tar.gz"
      sha256 "ccfdf39ee0de95ae8d3a3c916cc050ac5c7530239c79ed8890b296cc9350e278"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.2.0/eeco_v2.2.0_darwin_amd64.tar.gz"
      sha256 "fc531772c1d10619c75951c890df7a96df3bee21842256d863b143d45e809caf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.2.0/eeco_v2.2.0_linux_arm64.tar.gz"
      sha256 "313c0aa954af0e360641cbedef412e8fb154219ee3c4ca17b46c58c23311f7dd"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.2.0/eeco_v2.2.0_linux_amd64.tar.gz"
      sha256 "efe06bcd7e12b638505cbb2e34a2269744e2d4cb05e421705587a29d4ea56392"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
