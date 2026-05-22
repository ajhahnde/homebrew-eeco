class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "1.27.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.4/eeco_v1.27.4_darwin_arm64.tar.gz"
      sha256 "2c658fa4764df2a8d9cb5619a4b6cefc5ad0253f69efdbff3ec05cc5bbd1707a"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.4/eeco_v1.27.4_darwin_amd64.tar.gz"
      sha256 "a754243ec10802da53165b2711c0e1e533bb713f7899947089ec0df76f679ffe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.4/eeco_v1.27.4_linux_arm64.tar.gz"
      sha256 "435f35d772b6a42a5efdde62968b12b544504e51a049a9d7b59c8444916d5afc"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v1.27.4/eeco_v1.27.4_linux_amd64.tar.gz"
      sha256 "effff2052030d66ec156a65c07f81b20a7ccd0b036b7e370afb106bc268c8377"
    end
  end

  def install
    bin.install "eeco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eeco version")
  end
end
