class Foundrylocal < Formula
  desc "Formula for Foundry Local CLI and Inference Agent installer"
  homepage "https://github.com/microsoft/Foundry-Local"
  url "https://github.com/baijumeswani/homebrew-foundrylocal/releases/download/v0.5.108/FoundryLocal-osx-arm64-0.5.108.zip"
  sha256 "57fb18eae2437dc5fccb763d622958dec4da573effecde097db3b958860b8a73"
  
  def install
    bin.install "bin/foundry"
    bin.install "bin/Inference.Service.Agent"

    lib.install "bin/libonnxruntime-genai.dylib"
    lib.install "bin/libonnxruntime.dylib"

    etc.install "bin/appsettings.json"
  end
end
