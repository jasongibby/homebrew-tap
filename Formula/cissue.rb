class Cissue < Formula
  desc "Fast, fuzzy GitHub issue picker for the terminal"
  homepage "https://github.com/jasongibby/cissue"
  url "https://github.com/jasongibby/cissue/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e57c90dc8efef4bb821fafeaebc7927d0229f968287e2f2ba5141f0d730530d0"
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
