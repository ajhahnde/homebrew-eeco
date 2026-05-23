class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.1.0/eeco_v2.1.0_darwin_arm64.tar.gz"
      sha256 "4c8455ac333d6e6749c9aef1b9c784e3afee26df00a93fbe7631cb73416efe91"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.1.0/eeco_v2.1.0_darwin_amd64.tar.gz"
      sha256 "77d8eedb359c99fd8f8ca3b39da413c980644f0d87e93607b794f7a4305a026b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.1.0/eeco_v2.1.0_linux_arm64.tar.gz"
      sha256 "9b2e3fd613155387fee6de24d38147ef3d9e687cfb77885540f6cd37a755afbd"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.1.0/eeco_v2.1.0_linux_amd64.tar.gz"
      sha256 "1c0808d40c92a3e092ed674f7c101d9d7fe048735b66c40fae556ec9e21ac072"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
