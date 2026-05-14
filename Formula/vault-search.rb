# typed: false
# frozen_string_literal: true

class VaultSearch < Formula
  desc "Local-first semantic search MCP server for Obsidian vaults"
  homepage "https://github.com/eggyShrimp/vault-search"
  url "https://github.com/eggyShrimp/vault-search.git",
      revision: "0e15b08287fd75c505507cbd970ea581445dd563"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "vault-search", shell_output("#{bin}/vault-search --version")
  end
end
