class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.18.5/atl-2026.18.5-aarch64-apple-darwin.tar.gz"
      sha256 "109c78e30c42e2d68b528f0b8c9642674e99a4cdb30ab54cece1168c6abce65a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.18.5/atl-2026.18.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "591046fe0fbf1401818841f69bf17d9b2ec3aa45c37ea00e4af03eb0f428226e"
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
