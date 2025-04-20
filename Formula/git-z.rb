class GitZ < Formula
  desc "Git extension to go beyond"
  homepage "https://github.com/ejpcmac/git-z"
  url "https://github.com/ejpcmac/git-z/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "35e3266466d8c637eb0a17bf006e889027dbb7e84a3e932b444e7c947e6caff5"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/ejpcmac/homebrew-repo/releases/download/git-z-0.2.4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "41d3df488e7d54097b37f57bd137054b08fb1e10998f95373701c53237c55277"
    sha256 cellar: :any_skip_relocation, ventura:       "1c09f6910461ec09631076e7244f34a6de295be46e5ce7a33d10e4ebce691b9d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "b0ec16b60d2fde464500a1aced4d9b8615d9bda21533373e172d22000d862d09"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
