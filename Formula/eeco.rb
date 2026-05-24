class Eeco < Formula
  desc "Self-maintaining workflow ecosystem for a coding project"
  homepage "https://github.com/ajhahnde/eeco"
  version "2.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.9.0/eeco_v2.9.0_darwin_arm64.tar.gz"
      sha256 "19a35e67c7da0a77429cf3f62c4d9445a5319597fac49b91f5fc06b02f0434fa"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.9.0/eeco_v2.9.0_darwin_amd64.tar.gz"
      sha256 "bb69cb4f10a7af587868fbeb2d5ed825910056d56f0bd02960f0c6c705d91630"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ajhahnde/eeco/releases/download/v2.9.0/eeco_v2.9.0_linux_arm64.tar.gz"
      sha256 "0d658288062fcbc44a9db348acac23870b37eb5308dba2e00d2bd85cdf381d33"
    else
      url "https://github.com/ajhahnde/eeco/releases/download/v2.9.0/eeco_v2.9.0_linux_amd64.tar.gz"
      sha256 "d8558a878298f604447a7f1cd77985e94a9f23798fa99eb893ade9df37a333e4"
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
