# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.18.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/exoscale/cli/releases/download/v1.18.0/exoscale-cli_1.18.0_darwin_amd64.tar.gz"
    sha256 "b40ddf70d171cee8fee21ff68c95e1aec03afb892298debb50e2e3d557495d19"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.18.0/exoscale-cli_1.18.0_linux_amd64.tar.gz"
      sha256 "7bb675f2e4ed782f1830a6eaf212532260af87eda36d6d369823efc3ae60012d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exoscale/cli/releases/download/v1.18.0/exoscale-cli_1.18.0_linux_arm64.tar.gz"
        sha256 "3e4b712c4adee579ab74f466f771f0ac57eb5e5bbde6a3a1c1e6fa014bec82c0"
      else
        url "https://github.com/exoscale/cli/releases/download/v1.18.0/exoscale-cli_1.18.0_linux_armv6.tar.gz"
        sha256 "28578f21d3449328cbe8c828deb15c5507aafd48ad8ec7d3eafa9543f0d2b7a5"
      end
    end
  end

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
