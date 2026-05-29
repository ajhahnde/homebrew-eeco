class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.12.0/eeco_v1.12.0_darwin_arm64.tar.gz"
      sha256 "4dd73d82170bbacbc3ac7ed061ed11c8631f6c2d7f9f09360a167844293fd93a"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.12.0/eeco_v1.12.0_darwin_amd64.tar.gz"
      sha256 "9c592409948fe89f0ce9f59bb6e57c751d14de957c1b9d4e7754c14fae035988"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.12.0/eeco_v1.12.0_linux_arm64.tar.gz"
      sha256 "d5b124d723ffa5435f61601e19d51e846b7b69f8dcb76e63a8ffefaf6fdb4df0"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.12.0/eeco_v1.12.0_linux_amd64.tar.gz"
      sha256 "82190f423851f26e45cea20807c30f87433bf4c429343ab5ecbd1e60834e0754"
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
