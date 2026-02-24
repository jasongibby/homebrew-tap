class Cissue < Formula
  desc "Fast, fuzzy GitHub issue picker for the terminal"
  homepage "https://github.com/jasongibby/cissue"
  url "https://github.com/jasongibby/cissue/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "9115145c4f2ff310efdce55e0abeefd37754f2b831058c7d8c2905049556cc56"
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
