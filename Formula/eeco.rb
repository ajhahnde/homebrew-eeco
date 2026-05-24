class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.0/eeco_v2.11.0_darwin_arm64.tar.gz"
      sha256 "a03e32b44cb68f4aac03c72d7247e6842494392506bfbf849ecf31b502433eed"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.0/eeco_v2.11.0_darwin_amd64.tar.gz"
      sha256 "e6e9a9d79d8419a0bcea0ff01a7644a95bf369508e9055eb51e29ee00e5093f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.0/eeco_v2.11.0_linux_arm64.tar.gz"
      sha256 "8709c3791ab63b1c2468d89ad59c6f06d062e0297a259ef2c4b63c7e4435fc58"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.11.0/eeco_v2.11.0_linux_amd64.tar.gz"
      sha256 "d81ec723047815a18d5627de72a3695d701a6b70c327e3f93071ea971cb91200"
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
