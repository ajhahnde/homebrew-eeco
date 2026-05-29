class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.10.0/eeco_v1.10.0_darwin_arm64.tar.gz"
      sha256 "10701a3418ab11ab8713e189e40af1c5e0681ae79014a43e75cbab65a293c31b"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.10.0/eeco_v1.10.0_darwin_amd64.tar.gz"
      sha256 "df0f40722d861c752e286c6cbb591650551b3e2eb8d67ab53cd4bfec127994a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.10.0/eeco_v1.10.0_linux_arm64.tar.gz"
      sha256 "6cdf9b1d70aab4ca53eed5d9d7b235fd5b4f80a64cb75ca7b82481613f1b233c"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.10.0/eeco_v1.10.0_linux_amd64.tar.gz"
      sha256 "70af79e6ff7689eb6ad35f25a856b48759a7e2e5f0ca4c3c9eec919435a7a356"
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
