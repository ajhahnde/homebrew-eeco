class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.16.1"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.1/eeco_v1.16.1_darwin_arm64.tar.gz"
      sha256 "8bbc433bc9b86a45185caaa793983eed92db6f5e13189bf017eb26e3f9929588"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.1/eeco_v1.16.1_darwin_amd64.tar.gz"
      sha256 "47dc7e365b9107e02dada7f37240537720a9372cc304080ef45499b759111500"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.1/eeco_v1.16.1_linux_arm64.tar.gz"
      sha256 "dd7f0695a4c50ded8d8ee83989ccbced7ca0a29fbab7b3669b004c3473fe5fd2"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.16.1/eeco_v1.16.1_linux_amd64.tar.gz"
      sha256 "aeeece769659be9aefa0c67c4708d49e7673e47cff8c310c11bba77433b0f83d"
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
