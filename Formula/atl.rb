class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.29.1/atl-2026.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "56647faaf33216ce46a2883c7357b331c0af0190ce02bdda42d26ecd64d60c71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.29.1/atl-2026.29.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c064b19b88f753317bbfa3d17837dfa646fc635acce047f7374bbda81ad4f807"
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
