class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.47.2/atl-2026.47.2-aarch64-apple-darwin.tar.gz"
      sha256 "41fb9c1d83ad16acaa4cab324d19500a9e787e61ea44350606e7613215e15b14"
    end
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.47.2/atl-2026.47.2-x86_64-apple-darwin.tar.gz"
      sha256 "42dfeb06a94c27d3d7b7433eb35347988a9bf50ae2e971803115e500240a0939"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.47.2/atl-2026.47.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70013c32b346b884f5509b4e904ad742a08a5e3a10728a2ea5474d9b0d89ca95"
    end
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.47.2/atl-2026.47.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "007e999627d5db26434b4fbdf267305561d879d08a29b20a6b62c7aa45562372"
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
