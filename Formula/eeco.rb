class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.16.0"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.0/eeco_v1.16.0_darwin_arm64.tar.gz"
      sha256 "496bd9da004ebaccab73383d38e7262985b258aee33d686dcbc09db489646d79"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.0/eeco_v1.16.0_darwin_amd64.tar.gz"
      sha256 "460c7dbdece57e65133c41f1b7e07b6a405fc9d5e88405ec0284a49b5c765449"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.0/eeco_v1.16.0_linux_arm64.tar.gz"
      sha256 "a842de1d98b19c6c2480c58fec4c97bacf4d0328c7e5d1cfdff8ca554ad8d7dc"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.0/eeco_v1.16.0_linux_amd64.tar.gz"
      sha256 "e799f1da4c4018c96db149ff3592d7d2c3b439f84178c913002c7f3a4b9e6e5c"
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
