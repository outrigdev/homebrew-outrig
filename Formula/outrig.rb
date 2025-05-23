# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Outrig < Formula
  desc "Observability monitor for Go programs during development time"
  homepage "https://github.com/outrigdev/outrig"
  version "0.5.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outrigdev/outrig/releases/download/v0.5.14/outrig_0.5.14_Darwin_x86_64.tar.gz"
      sha256 "d914c71e96c60a83cdc5bd36c89761059de57ca947ff2fe800b37cd3cbead131"

      def install
        bin.install "outrig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/outrigdev/outrig/releases/download/v0.5.14/outrig_0.5.14_Darwin_arm64.tar.gz"
      sha256 "ae3ccbce8ef3a22bf19b10d09875f2cbde00087dda9d0a1a2493a8002e0c21c1"

      def install
        bin.install "outrig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.5.14/outrig_0.5.14_Linux_x86_64.tar.gz"
        sha256 "216f7f2697170570750cf7f40edfc39cee1c92bd4723bc5feb3593aadb01a72f"

        def install
          bin.install "outrig"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.5.14/outrig_0.5.14_Linux_arm64.tar.gz"
        sha256 "daf6c508b8da289d940812c9fdc3130c96215ac08580b5f9aaeb65098c07110e"

        def install
          bin.install "outrig"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Outrig has been installed successfully!

      Quick start and docs:
      https://outrig.run/docs/quickstart

      To start the Outrig server manually (foreground):
        outrig server

      To load and start Outrig as a background service (recommended):
        brew services start outrig

      ---
      Outrig is open source and free for individual users.
      If you find it useful, please star us on GitHub:
        https://github.com/outrigdev/outrig
      ---
    EOS
  end

  service do
    run [opt_bin/"outrig", "server"]
    keep_alive false
    log_path var/"log/outrig.log"
    error_log_path var/"log/outrig.log"
    working_dir var
  end

  test do
    system "#{bin}/outrig", "version"
  end
end
