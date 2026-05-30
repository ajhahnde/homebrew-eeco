class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.14.1"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.1/eeco_v1.14.1_darwin_arm64.tar.gz"
      sha256 "f0c616ba7957c22f68d5739ddd1459367a40997edd2d7919adaaf50011922327"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.1/eeco_v1.14.1_darwin_amd64.tar.gz"
      sha256 "76d75a49ccacdf076815b4056b41709867a8a7af9a6a1fdbdc7939015419f426"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.1/eeco_v1.14.1_linux_arm64.tar.gz"
      sha256 "36db69db5047892f784b7742b9d0e982486415a62786ce32c2c9087b7ddfe071"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.1/eeco_v1.14.1_linux_amd64.tar.gz"
      sha256 "aaf22f169d3d8d5a2f3b6c42ef0c68e20bde04a9a5272b161faa4410bbb4baa1"
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
