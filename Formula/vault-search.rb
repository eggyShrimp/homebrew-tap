# typed: false
# frozen_string_literal: true

class VaultSearch < Formula
  desc "Local-first semantic search MCP server for Obsidian vaults"
  homepage "https://github.com/eggyShrimp/vault-search"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/eggyShrimp/vault-search/releases/download/v#{version}/vault-search-aarch64-apple-darwin.tar.gz"
      sha256 "1541d588514831e9c9bb4ba8fdf3fa04284b33737d88712e7ab66cf2aae2066e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/eggyShrimp/vault-search/releases/download/v#{version}/vault-search-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c39b14f492644814ad73ea52bef9c969d0165ddf863039d49a5c5d8defcccca"
    end

    on_intel do
      url "https://github.com/eggyShrimp/vault-search/releases/download/v#{version}/vault-search-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c38c7d55d6d716f9a4a5dd14b024bd7c7e985dc3c25929dcf4cebdf80d4399a1"
    end
  end

  def install
    bin.install "vault-search"
  end

  test do
    assert_match "vault-search", shell_output("#{bin}/vault-search --version")
  end
end
