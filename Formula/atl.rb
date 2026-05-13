class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.20.2/atl-2026.20.2-aarch64-apple-darwin.tar.gz"
      sha256 "76007b2245daf99d7d6ab684c88ccdbbe24524eb30ee4f5ebb7714f6f846b946"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.20.2/atl-2026.20.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "043f34ab858b79d5164e83e051a17f4354c15c3f48f950693960ee5574e64e39"
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
