class GitZ < Formula
  desc "Git extension to go beyond"
  homepage "https://github.com/ejpcmac/git-z"
  url "https://github.com/ejpcmac/git-z/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "58f839256441f87363ac0c23f6e7e65b385523cf6c81052e4808228629c27db7"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
