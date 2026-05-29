class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.0/eeco_v1.5.0_darwin_arm64.tar.gz"
      sha256 "cc0aa0fd0a4178080414f12c8d39451480e4ad440e7c35d9a598d9d5e6c2e112"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.0/eeco_v1.5.0_darwin_amd64.tar.gz"
      sha256 "fcd329295dfe0ca560811488fae1c132c10e9e5897bc7189a1d26341a8781322"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.0/eeco_v1.5.0_linux_arm64.tar.gz"
      sha256 "f5d16d6e3e320a722515bfd5151da4d566e16577e9313f85e97a9f9caab5bf07"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.5.0/eeco_v1.5.0_linux_amd64.tar.gz"
      sha256 "3859b34f7a00e9e26e09aa489dbc8d36d3aa9ed116caefe7e0a4b3120328068b"
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
