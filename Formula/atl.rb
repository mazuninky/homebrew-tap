class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.46.1/atl-2026.46.1-aarch64-apple-darwin.tar.gz"
      sha256 "3c85beb9ba839543ce2336bb079d38da9ac61110d79b67ac0411b64183cae2e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.46.1/atl-2026.46.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2077c90a88ab9ba1a8837bed0eae0d0ef10fcf9a61fcc85183845027df63227"
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
