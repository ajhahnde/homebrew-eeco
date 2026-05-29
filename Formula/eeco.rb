class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.3.0/eeco_v1.3.0_darwin_arm64.tar.gz"
      sha256 "bb3cadafc3c488a199bd23c4ffb6eacc25b860ed9ac858a1a9c7e525b791f8d5"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.3.0/eeco_v1.3.0_darwin_amd64.tar.gz"
      sha256 "f35b973e39f3cc67b7f1a743d62fa67b6ccdcfe1dd7e3e0bdf1a1e680cd55dc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.3.0/eeco_v1.3.0_linux_arm64.tar.gz"
      sha256 "5ab53ae1bab70b55297ca733752cb64bb7c951cc23c98c7b70b190f82e38510b"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.3.0/eeco_v1.3.0_linux_amd64.tar.gz"
      sha256 "24c998ad8138d8f866eab3c92844a24b1d11779d4166ed7de9d30ded3422fb91"
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
