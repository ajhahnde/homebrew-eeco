class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.9.0/eeco_v1.9.0_darwin_arm64.tar.gz"
      sha256 "afeb58df4d806ef1e3aca46db72606290b0a35e0964c7f823af07e9b94186d1e"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.9.0/eeco_v1.9.0_darwin_amd64.tar.gz"
      sha256 "17d2d4efbe2355a8d68de3b13f8761ef83e5c8fb60e239f6fba45dd903e9e200"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.9.0/eeco_v1.9.0_linux_arm64.tar.gz"
      sha256 "11b8b0da7f7e5543eb8e82686b4a32bb67513f61ce7d366a61bbc038f2f73a23"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.9.0/eeco_v1.9.0_linux_amd64.tar.gz"
      sha256 "c72bb5389ea53020bbaf9e6103208c6d5b64cef6c742d04d6d37064316e39701"
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
