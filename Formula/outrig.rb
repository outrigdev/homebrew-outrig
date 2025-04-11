# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Outrig < Formula
  desc "Real-time debugging for Go programs, similar to Chrome DevTools"
  homepage "https://github.com/outrigdev/outrig"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outrigdev/outrig/releases/download/v0.1.7/outrig_0.1.7_Darwin_x86_64.tar.gz"
      sha256 "0c03d35f8989f8230f86c5e3e21d14a57f0bc90c497d949df2e7494a489f0362"

      def install
        bin.install "outrig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/outrigdev/outrig/releases/download/v0.1.7/outrig_0.1.7_Darwin_arm64.tar.gz"
      sha256 "559a84ae6e186eeb1e4d14a8dc0694cb523206eab47a68f0e9afdfe7cc95e36e"

      def install
        bin.install "outrig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.1.7/outrig_0.1.7_Linux_x86_64.tar.gz"
        sha256 "7c577d51d71cd27ea6204efd0c6924a3d76327c9f2b8d3e1a9417c5268acc5d3"

        def install
          bin.install "outrig"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.1.7/outrig_0.1.7_Linux_arm64.tar.gz"
        sha256 "9112dfe1997319e7e76a655d8215066b7a93fa8c19be4717dcc4c6b89526aadb"

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
