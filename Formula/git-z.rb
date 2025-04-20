class GitZ < Formula
  desc "Git extension to go beyond"
  homepage "https://github.com/ejpcmac/git-z"
  url "https://github.com/ejpcmac/git-z/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "35e3266466d8c637eb0a17bf006e889027dbb7e84a3e932b444e7c947e6caff5"
  license "GPL-3.0-only"

  bottle do
    root_url "https://github.com/ejpcmac/homebrew-repo/releases/download/git-z-0.2.3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6a8a1f0f439452736d2b1e43e567d4a0c43a52f3e517c41524021894584f8e57"
    sha256 cellar: :any_skip_relocation, ventura:       "59f16693caff966ca9b91d5a98c70c67eb0247e8f61fbc4d814b223b95772466"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5999ff58935d26dc421d42ac799acd88a9fa41161683fb9569bb221f8f834503"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
