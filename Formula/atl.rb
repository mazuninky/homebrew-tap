class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.18.4/atl-2026.18.4-aarch64-apple-darwin.tar.gz"
      sha256 "2ddd435e21e2a2fc14a2ad29738d66afaf9e6a7414eb6913f6e600e037448537"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.18.4/atl-2026.18.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ead2df31300fdc351d7d265ecd9b096492ff537452ca0209dc88efd1cb132c35"
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
