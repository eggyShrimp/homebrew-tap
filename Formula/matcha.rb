# typed: false
# frozen_string_literal: true

class Matcha < Formula
  desc "Vault write gateway and knowledge compiler for Obsidian"
  homepage "https://github.com/eggyShrimp/matcha"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eggyShrimp/matcha/releases/download/v#{version}/matcha-v#{version}-aarch64-macos.tar.gz"
      sha256 "74f20d5209c42336c24d9ece8db7eb85c32feed1c9bccde15e0a19805bfb1576"
    end
  end

  def install
    bin.install "matcha"
  end

  test do
    assert_match "matcha", shell_output("#{bin}/matcha --help")
  end
end
