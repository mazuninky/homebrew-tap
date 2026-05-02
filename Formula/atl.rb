class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.18.3/atl-2026.18.3-aarch64-apple-darwin.tar.gz"
      sha256 "1eef6197a6f51019e64ca671fd7b5cc5d035f2e31b68702d97ea9b11d0a26c3b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.18.3/atl-2026.18.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8856e0609df0d2613f392f4fea0eb3671a50e782b13c84de4212defd68c66fbc"
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
