class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.14.2"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.2/eeco_v1.14.2_darwin_arm64.tar.gz"
      sha256 "454aa38c0d6bdf2bfa9a1d4355ecbf7e60baf334e828a95eca8fdeb725cfdb33"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.2/eeco_v1.14.2_darwin_amd64.tar.gz"
      sha256 "a7676b145c5f9c8f7ada396adbb258be39471db818a7b8afbf25e2dc69b0f4dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.2/eeco_v1.14.2_linux_arm64.tar.gz"
      sha256 "dc1901928a726c7baaf449a58bd8df8b573ae8813509d6f5e54d936eae3793d3"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.14.2/eeco_v1.14.2_linux_amd64.tar.gz"
      sha256 "0d7258ef565a104aa24b4e47d7f714a22bfc1109cc248e22a7d165941edc6489"
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
