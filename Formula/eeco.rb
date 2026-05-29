class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.1/eeco_v1.5.1_darwin_arm64.tar.gz"
      sha256 "cc5ca46aabd9744e7ed51eb513b8625f70f038952928bc8fb6c0a7e241af3e8e"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.1/eeco_v1.5.1_darwin_amd64.tar.gz"
      sha256 "edb632f1343c89e213bf8d4d71cca88dd376289dac974dce10464596c8584529"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.1/eeco_v1.5.1_linux_arm64.tar.gz"
      sha256 "d3cc32b33e57da644d63d3531e349e19453b468f91ca12aa9ef91e712ced923e"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.1/eeco_v1.5.1_linux_amd64.tar.gz"
      sha256 "f09fe32479d36b489848ef342ef204191e966c091ec0e11618ffdd09f8710444"
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
