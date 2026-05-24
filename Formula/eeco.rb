class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.2/eeco_v2.8.2_darwin_arm64.tar.gz"
      sha256 "042a4123e0501aaeb3f6f343c897a3eeef190710323feeca116cd62d0d6903a0"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.2/eeco_v2.8.2_darwin_amd64.tar.gz"
      sha256 "265b584feb4a56a86bf2e1fd51ec158b3d7e87e69f0f308e2c7976ce57a8be05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.2/eeco_v2.8.2_linux_arm64.tar.gz"
      sha256 "cb018cf63f2192a2a9ac96366ff585446103b9e4fffb48986a8c7f6e6a09ff9f"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.8.2/eeco_v2.8.2_linux_amd64.tar.gz"
      sha256 "f34fcbb794e03b2837a3cc9bf1f5f33aeae4198ca4cfadb54d34bf0dae92031a"
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
