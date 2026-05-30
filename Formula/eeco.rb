class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.13.0/eeco_v1.13.0_darwin_arm64.tar.gz"
      sha256 "2f138303bad1078d7525ae4d69c9903506733d65165ad6130e3f72494059f73e"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.13.0/eeco_v1.13.0_darwin_amd64.tar.gz"
      sha256 "ba2aa2159e840a05de0e5ea66b8c06c3b5b24bc979d46887b77739735a912817"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.13.0/eeco_v1.13.0_linux_arm64.tar.gz"
      sha256 "7cdb78cc32b01095e03b098a26cacc78184ae60926628cb74d0b6e8d61e2fb2d"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.13.0/eeco_v1.13.0_linux_amd64.tar.gz"
      sha256 "0e8a212b5c08a8ce5d3cd0b11297880a08351bac9850c8c24d3b8615b62873ea"
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
