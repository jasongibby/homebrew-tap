class Cissue < Formula
  desc "Fast, fuzzy GitHub issue picker for the terminal"
  homepage "https://github.com/jasongibby/cissue"
  url "https://github.com/jasongibby/cissue/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "cb0721923383a7c816f1621c1b75514d4d35f86a20907a458aa453f251e1b75d"
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
