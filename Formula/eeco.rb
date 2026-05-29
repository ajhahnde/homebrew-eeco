class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.8.0/eeco_v1.8.0_darwin_arm64.tar.gz"
      sha256 "8e75ca5e98ae5f6c5f8481b3e794c820b6bd4d9a4aeb5d706dba822d4920757a"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.8.0/eeco_v1.8.0_darwin_amd64.tar.gz"
      sha256 "99e1d30799cc0cca0d92d55ed2078b7b20f8644581cf44687535277147ced606"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.8.0/eeco_v1.8.0_linux_arm64.tar.gz"
      sha256 "eaf38d1d4e307f0d338c3b618d891b07a43dc330eb546c6f740155587a0ef1e6"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.8.0/eeco_v1.8.0_linux_amd64.tar.gz"
      sha256 "72ad834163aa21038e3ed492b986ff0aa829e7b5f82cfc9fbd9092bfe2b8d30a"
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
