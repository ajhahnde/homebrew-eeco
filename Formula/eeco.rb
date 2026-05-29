class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.4.0/eeco_v1.4.0_darwin_arm64.tar.gz"
      sha256 "ecc1dbc9505902f4615c66833dbdd3a93a10e36bab37d64d694cd45c610868cb"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.4.0/eeco_v1.4.0_darwin_amd64.tar.gz"
      sha256 "1a43fb1b892256a7bc2e8cb3c2d470b0797a51364d8261be1f027f061b216f4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.4.0/eeco_v1.4.0_linux_arm64.tar.gz"
      sha256 "3fe3e4d41d58c3144ea8c027cbf118464aa0d20fe20831ed0dcf79625e322e64"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.4.0/eeco_v1.4.0_linux_amd64.tar.gz"
      sha256 "c7ce481ded97be3ac6d3f486a8f13fca43296b3a97baf4fc36de4ea96b7985d3"
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
