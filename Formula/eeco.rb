class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.7.0/eeco_v2.7.0_darwin_arm64.tar.gz"
      sha256 "e26e097c54bf5fb23b7a9cdb50ba3a491fd6763df5093dc9b8df5bf8939fdc42"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.7.0/eeco_v2.7.0_darwin_amd64.tar.gz"
      sha256 "bc3ea1fd645c856e19edd533bd94f0dad407d2e9a1a3917e8b7ac3c29bdc68ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.7.0/eeco_v2.7.0_linux_arm64.tar.gz"
      sha256 "294dd1c4249819f4647a58dcbb7740a4dbef5b64084ebd04de42eb2596d1ba68"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.7.0/eeco_v2.7.0_linux_amd64.tar.gz"
      sha256 "9340721823386cbfa2cb2ed2e36751b06003a094b48e7b4b0a3a08ca07966848"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
