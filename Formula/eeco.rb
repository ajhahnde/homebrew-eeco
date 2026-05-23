class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.2/eeco_v2.0.2_darwin_arm64.tar.gz"
      sha256 "4aa7259ab428bfd9a167b7127c6066aa6637e28e24b6120eaf2f00ae9c20308f"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.2/eeco_v2.0.2_darwin_amd64.tar.gz"
      sha256 "84bc4995d71891a8a4d6ec544f9f91bb940dfdafe7939f1ff42b54aa0a575fdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.2/eeco_v2.0.2_linux_arm64.tar.gz"
      sha256 "8bddad98c4c326414a0f92fa8d0c0b2159ddb2179b5caf672fd3589a1eed286a"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.0.2/eeco_v2.0.2_linux_amd64.tar.gz"
      sha256 "7b00d4846c637d05150bc4455ed6eaaeab828b03d0aca5a3355fbe7647145a02"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
