class Cissue < Formula
  desc "Fast, fuzzy GitHub issue picker for the terminal"
  homepage "https://github.com/jasongibby/cissue"
  url "https://github.com/jasongibby/cissue/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "40e3640b286e5492925e5ee9dbb7d1d1c760c74183a0daf115f88635bc694dec"
  license "MIT"

  depends_on "gh"
  depends_on "fzf"
  depends_on "figlet"
  depends_on "jq"

  def install
    bin.install "cissue"
  end

  test do
    assert_match "Usage: cissue", shell_output("#{bin}/cissue --help")
  end
end
