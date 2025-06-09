class Foundrylocal < Formula
  desc "Formula for Foundry Local CLI and Inference Agent installer"
  homepage "https://github.com/microsoft/Foundry-Local"
  url "https://github.com/baijumeswani/homebrew-foundrylocal/releases/download/v0.5.85/FoundryLocal-osx-arm64-0.5.85.zip"
  sha256 "e83200a56d01d8c770fe1b3a62290bac245708ddb29770651ef9695c18ac9089"

  def install
    prefix.install Dir["bin/foundry"]
    prefix.install Dir["bin/Inference.Service.Agent"]
    prefix.install Dir["bin/libonnxruntime-genai.dylib"]
    prefix.install Dir["bin/libonnxruntime.dylib"]
    prefix.install Dir["bin/appsettings.json"]

    bin.install_symlink prefix/"foundry"
  end
end
