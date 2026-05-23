class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.27.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.5/eeco_v1.27.5_darwin_arm64.tar.gz"
      sha256 "89b5a87b15f7b69210524ca5b8175ee1ca5f9a476d9d411c2cae0b84f7f7812d"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.5/eeco_v1.27.5_darwin_amd64.tar.gz"
      sha256 "403ed7ddff8a3daaa3e5b0180bd99fc63e05973b2df5db432bbdc24a8b7cfbb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.5/eeco_v1.27.5_linux_arm64.tar.gz"
      sha256 "7963b099de642b1bfcde9a6bfcc6c942ca4f8d319e4712b43ad3ff63bccb9311"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.5/eeco_v1.27.5_linux_amd64.tar.gz"
      sha256 "1584f2fa5dd39ed5efcf7b3e5a4b566e27b9938c9bff9da53efdbbfa86bd5a93"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
