class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.27.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.3/eeco_v1.27.3_darwin_arm64.tar.gz"
      sha256 "11cb76bfd977b1f26fbc9dc4cb8baa857f3f9f21a7a2fe77c2c8c03251dd7b65"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.3/eeco_v1.27.3_darwin_amd64.tar.gz"
      sha256 "c9ef035f16173e771d3405d81a4a09a8c2fdba1bba53a7586cf74b47e530736d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.3/eeco_v1.27.3_linux_arm64.tar.gz"
      sha256 "0ed194a1343b17d0c39c476e401f2ad4f93af56d9c6f5e707cb1cea72a355050"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.3/eeco_v1.27.3_linux_amd64.tar.gz"
      sha256 "a5ed9ede487abea11224d908439739dd8035f8e53dc2fc7202700fb549c197e0"
    end
  end

  def install
    bin.install Dir["*/eeco"].first => "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
