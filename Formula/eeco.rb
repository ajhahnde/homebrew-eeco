class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.5.0/eeco_v2.5.0_darwin_arm64.tar.gz"
      sha256 "0cf807dda6ea1a42949f53e9192c72a4c48ed38705365381990ecf78855e1a67"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.5.0/eeco_v2.5.0_darwin_amd64.tar.gz"
      sha256 "ed3c6c6d058d4beb2117b1aab59b40ec76994ed02fa572a822d39c40809a4ae4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.5.0/eeco_v2.5.0_linux_arm64.tar.gz"
      sha256 "c135febd6d945a1ef399519028a67487f288c380dbc9a0c0b3f2f5506fe770d7"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.5.0/eeco_v2.5.0_linux_amd64.tar.gz"
      sha256 "647ccd5519195a336ef465642fcea79f23aac4ba4ae44c8bb79cc0bb15a83d06"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
