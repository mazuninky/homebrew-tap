class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.1/atl-2026.48.1-aarch64-apple-darwin.tar.gz"
      sha256 "b570dad1bdac82fb2d14aa466a9cbe5e04e9547ade6146aed98858890f9d3bed"
    end
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.1/atl-2026.48.1-x86_64-apple-darwin.tar.gz"
      sha256 "6d60da06144afe274456655f471730227fc8aaf13fc6af9137d1011cc36af731"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.1/atl-2026.48.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4eb177179e198faa7f7e96015ddf39d7834e9071cbbd0a07d4757387984bad53"
    end
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.1/atl-2026.48.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "053e97f0703b4e5e8fcc54c65ea128c10dc09aec0f3698cc8ff51235281ad3f6"
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
