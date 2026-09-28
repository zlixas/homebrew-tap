# typed: false
# frozen_string_literal: true

# easylock: from-scratch cryptography toolkit (CLI + terminal UI), EN/TR/ES.
class Easylock < Formula
  desc "File encryption, encrypted vaults and a crypto toolkit written from scratch in Rust"
  homepage "https://github.com/zlixas/easylock"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/zlixas/easylock/releases/download/v0.2.0/easylock-aarch64-apple-darwin.tar.gz"
      sha256 "7846e5cea8203c9f1907785624367c7d9233789a01e0f0dda9d1db2297543e77"
    end
    on_intel do
      url "https://github.com/zlixas/easylock/releases/download/v0.2.0/easylock-x86_64-apple-darwin.tar.gz"
      sha256 "186e4a1c799733fd6fb5486d4338596b834be0c8c8c68752b4fa86663673ddc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zlixas/easylock/releases/download/v0.2.0/easylock-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56c6ed6e172a2cf5a1c2fb55ad4bd152989e9a854cb5c9f9bb9b686b360452ff"
    end
    on_intel do
      url "https://github.com/zlixas/easylock/releases/download/v0.2.0/easylock-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1dba9a1ff7b6888227c08314ef8f3b6d33c8a8451dd55e14464128c594f984a"
    end
  end

  def install
    bin.install "easylock"
  end

  test do
    assert_match "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad",
                 pipe_output("#{bin}/easylock hash -a sha256", "abc")
  end
end
