class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.27.1/atl-2026.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "00d6e19962abff20a0e22a4fc468ea852bbeb84c99c0011da88ec9315ba9cf50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.27.1/atl-2026.27.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d954edfbc3854b45bce7a8d75fb3b1adcf0e56eb102b09d8fbcb1aaa88f59b83"
    end
  end

  def install
    bin.install "atl"
    man1.install Dir["man/*.1"]
    bash_completion.install "completions/atl.bash" => "atl"
    zsh_completion.install "completions/_atl"
    fish_completion.install "completions/atl.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atl --version")
  end
end
