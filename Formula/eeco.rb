class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.3.0/eeco_v2.3.0_darwin_arm64.tar.gz"
      sha256 "67289a148330e8063474671873ad312ea210e32f4c7fc1d03721bd4372b4c42b"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.3.0/eeco_v2.3.0_darwin_amd64.tar.gz"
      sha256 "cd6af5b555cc71fc75dd34ce17cf6b2fada8e20f0a37fa41c958a47b2213b0c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.3.0/eeco_v2.3.0_linux_arm64.tar.gz"
      sha256 "eb444b941b8c123158afafab6dc844b140e044fbe496a79c9967fc8b595f9d31"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.3.0/eeco_v2.3.0_linux_amd64.tar.gz"
      sha256 "9f0ac66b7b5af789fbfadc429d4c4132a5b798f64fc4b184602e402c8a6c0b2f"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
