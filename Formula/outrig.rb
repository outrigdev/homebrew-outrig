# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Outrig < Formula
  desc "Real-time debugging for Go programs, similar to Chrome DevTools"
  homepage "https://github.com/outrigdev/outrig"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outrigdev/outrig/releases/download/v0.1.8/outrig_0.1.8_Darwin_x86_64.tar.gz"
      sha256 "c65ed5a5320b94064742cba241538c551ce35f5943b3d1f8513f299ef50c0cdb"

      def install
        bin.install "outrig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/outrigdev/outrig/releases/download/v0.1.8/outrig_0.1.8_Darwin_arm64.tar.gz"
      sha256 "cb26c3ac71c5f7a74e6bcec50c47d475712c7611b2400059f55024c9042dd5cc"

      def install
        bin.install "outrig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.1.8/outrig_0.1.8_Linux_x86_64.tar.gz"
        sha256 "7a73cb63c667b6a33214b2f5909ac5929086d5ab114a968f751fae1d52c76770"

        def install
          bin.install "outrig"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.1.8/outrig_0.1.8_Linux_arm64.tar.gz"
        sha256 "2e42140f782a4d6a8e30a5316ea1231563300431b5497561ee79a2cb5a399a70"

        def install
          bin.install "outrig"
        end
      end
    end
  end

  test do
    system "#{bin}/outrig", "version"
  end
end
