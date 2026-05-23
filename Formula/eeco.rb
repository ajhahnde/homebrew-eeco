class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.3/eeco_v2.0.3_darwin_arm64.tar.gz"
      sha256 "2a0ec0bec99984b19047b11d2dda579eb897916609c9fac4515c1b652cd65291"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.3/eeco_v2.0.3_darwin_amd64.tar.gz"
      sha256 "8e97e2ab1678655253c412b717ce91021094b84a6017c9168137e8a1aaf8413d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.3/eeco_v2.0.3_linux_arm64.tar.gz"
      sha256 "6d0dd848018323bd54e759462aee510e654315a3415187cf1e3715480a32cf13"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.3/eeco_v2.0.3_linux_amd64.tar.gz"
      sha256 "be43e064b6a64a7bac49ea1d9e30b4d3dc08646260c9fc272241a5e1ace88ddd"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
