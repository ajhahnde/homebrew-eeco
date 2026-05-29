class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.7.0/eeco_v1.7.0_darwin_arm64.tar.gz"
      sha256 "4c0c9f396c75a15a2b4283beef8262e105dcde7fa1085c20e5bf22ab43682acc"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.7.0/eeco_v1.7.0_darwin_amd64.tar.gz"
      sha256 "9d17ab03868ffdd9aa719ed9b541327bd3ee66a8c5eeefc6f8343424fa13f2c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.7.0/eeco_v1.7.0_linux_arm64.tar.gz"
      sha256 "04175b70849031545322af25df7aa8f3325cb5a817f7f6175b82ab1c39ff5330"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.7.0/eeco_v1.7.0_linux_amd64.tar.gz"
      sha256 "fefb6abbc60a1f22417152ce392051a271dfe9213ad503142e89918f5225acef"
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
