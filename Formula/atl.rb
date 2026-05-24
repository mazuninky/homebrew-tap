class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.21.2/atl-2026.21.2-aarch64-apple-darwin.tar.gz"
      sha256 "7337ddc46fa26c05719dfdd050aba71462d567aebe560996e5506bebe8d6bd4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.21.2/atl-2026.21.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "702b384915a701e00c45a022295f4869e26c62eaec7ae8f44d56d3c4fcf9908c"
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
