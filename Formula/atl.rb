class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.21.1/atl-2026.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "61cc1c4b1a3643ad964fdf64234fc8f24426f2eae2ce5f286c164c03b9181eb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.21.1/atl-2026.21.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56a6f5b9e1c484e30f585193bbd00c23a44be6ee5ae14e2d638f4994ddf604a6"
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
