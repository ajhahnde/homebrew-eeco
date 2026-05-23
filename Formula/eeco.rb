class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.0/eeco_v2.0.0_darwin_arm64.tar.gz"
      sha256 "1f74f02d453c113ca3cda2fbf7a9ca3742ec6b52d6787d8e7797894e203880f5"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.0/eeco_v2.0.0_darwin_amd64.tar.gz"
      sha256 "bcba19423e406dc0d1db616021813ee835526462a378e8009e3c078193a0be41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.0/eeco_v2.0.0_linux_arm64.tar.gz"
      sha256 "a6987158b651ab4f550b3baae16afb3b5a48f0b2bb9a9096690865392770ec00"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.0/eeco_v2.0.0_linux_amd64.tar.gz"
      sha256 "951e2a7e0ff0735359628751e793463d776a07373b4e7db38b85a370db993f41"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
