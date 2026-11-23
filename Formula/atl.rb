class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.2/atl-2026.48.2-aarch64-apple-darwin.tar.gz"
      sha256 "69d5a7d215f461ceabf35220125ca0c0a07dfad86a128551a0afbe208f0025c8"
    end
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.2/atl-2026.48.2-x86_64-apple-darwin.tar.gz"
      sha256 "92f118996eacd6bbb00c8f7e2f8015727c379e565aabc7d68e13c477ee1654d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.2/atl-2026.48.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "963205a5accc51e73c8331f737eb3dfbf79c640276e1777c0f6df66506038853"
    end
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.2/atl-2026.48.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "87d92f0fcc12264026aa2237c1adc83639b9fe8b88a38b9cb3bc004f87448f1e"
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
