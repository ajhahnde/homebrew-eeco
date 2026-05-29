class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.2.0/eeco_v1.2.0_darwin_arm64.tar.gz"
      sha256 "5f8e0ae6afb8a2a00a0e9e79e04c62d302d2637e12e1f5deb9a452397af5baec"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.2.0/eeco_v1.2.0_darwin_amd64.tar.gz"
      sha256 "b93600c469f56d0c8fba81e88e15ed900aa7f41c31823ec8b10602ae77c545ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.2.0/eeco_v1.2.0_linux_arm64.tar.gz"
      sha256 "12853f7e9afc40ad61c98581f32b6f9d26229c3819303bbc29ad58de47ae2a49"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.2.0/eeco_v1.2.0_linux_amd64.tar.gz"
      sha256 "8b1ea74c63bb8a49ad33081dff45f47787f48ee480147dff280847aa022f19f4"
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
