class Foundrylocal < Formula
  desc "Formula for Foundry Local CLI and Inference Agent installer"
  homepage "https://github.com/microsoft/Foundry-Local"
  url "https://github.com/baijumeswani/homebrew-foundrylocal/releases/download/v0.5.83/FoundryLocal-osx-arm64-0.5.83.zip"
  sha256 "8d6deb33d0bf09f5c33cb22ff669bd643bcefb87043333730e5f5804addf4b7a"

  def install
    prefix.install Dir["bin/foundry"]
    prefix.install Dir["bin/Inference.Service.Agent"]
    prefix.install Dir["bin/libonnxruntime-genai.dylib"]
    prefix.install Dir["bin/libonnxruntime.dylib"]
    prefix.install Dir["bin/appsettings.json"]

    bin.install_symlink prefix/"foundry"
  end
end
