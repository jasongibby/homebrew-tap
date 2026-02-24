class Cissue < Formula
  desc "Fast, fuzzy GitHub issue picker for the terminal"
  homepage "https://github.com/jasongibby/cissue"
  url "https://github.com/jasongibby/cissue/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6c69b71ae0b6472448efeed73ecf4ec61e86e51002ff3fe45fdc69979d0cc31b"
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
