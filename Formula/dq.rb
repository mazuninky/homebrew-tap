class Dq < Formula
  desc "Agent-friendly Rust CLI for structured data + linter platform"
  homepage "https://github.com/mazuninky/dq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.20.2/dq-2026.20.2-aarch64-apple-darwin.tar.gz"
      sha256 "c02a62377ce4a1f697a83ff3576cc46a15b33c55ff68095005e55946b197b1bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/dq/releases/download/v2026.20.2/dq-2026.20.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "893cb4706ccd23b58a763e0a3a02ef5e25211e530f3ed4cb2ef18b58ae779256"
    end
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.20.2/dq-2026.20.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25edf5bb706bcd0bace5a902debae47c6338deaaf4541fd60b00d214df69b3e5"
    end
  end

  def install
    bin.install "dq"
    man1.install Dir["man/*.1"]
    bash_completion.install "completions/dq.bash" => "dq"
    zsh_completion.install "completions/_dq"
    fish_completion.install "completions/dq.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dq --version")
  end
end
