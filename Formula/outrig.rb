# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Outrig < Formula
  desc "Observability monitor for Go programs during development time"
  homepage "https://github.com/outrigdev/outrig"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/outrigdev/outrig/releases/download/v0.8.2/outrig_0.8.2_Darwin_x86_64.tar.gz"
      sha256 "356b01f184ebcc0862eb0b46d1241a36b23f2e67bc51bc30eb3a1186e145c23e"

      def install
        bin.install "outrig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/outrigdev/outrig/releases/download/v0.8.2/outrig_0.8.2_Darwin_arm64.tar.gz"
      sha256 "b723a6b79650ba201d19d5fa70871d43c6095bc6d383502d989a2f83c8d7bb0d"

      def install
        bin.install "outrig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.8.2/outrig_0.8.2_Linux_x86_64.tar.gz"
        sha256 "a794bd7788123baf7b842ac9bfe2f8ea9d2dbdcbe5399792562efc3c66cba06c"

        def install
          bin.install "outrig"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/outrigdev/outrig/releases/download/v0.8.2/outrig_0.8.2_Linux_arm64.tar.gz"
        sha256 "dd4960b8b272c99bd4a6b30f85e3dd99146c5ab3457ecbfda26dac75cad80ab5"

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
