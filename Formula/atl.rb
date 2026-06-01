class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.23.1/atl-2026.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "13c6ccbee67a5acc071d7350830fc722eaeedfb9d757d2bd85c7490e3dc6ec21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.23.1/atl-2026.23.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edd5a8a6238cd65fe48ba61fc8e468187f53ce43d5f5cbc5a1b772eee4317cc3"
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
