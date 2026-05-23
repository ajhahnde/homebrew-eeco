class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.1/eeco_v2.0.1_darwin_arm64.tar.gz"
      sha256 "c8106cdeb11b2db9ee4f25a5d60c0880d5354ce630ffdc2c57a5104d0ff16952"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.1/eeco_v2.0.1_darwin_amd64.tar.gz"
      sha256 "66e02f5f23e34e2adbab805f1368983567a84d3bf01f64402e1ca6005389a0ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.1/eeco_v2.0.1_linux_arm64.tar.gz"
      sha256 "2e601fcc0bb08e78ea7115ca24e95d8ed8501fc32f4fb1ca77394aefbb68eb51"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.1/eeco_v2.0.1_linux_amd64.tar.gz"
      sha256 "6dd282be86a34a4c8f6605eadcf6dddabf507c5a2ad6e62320479b44d462d2f9"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
