class Dq < Formula
  desc "Agent-friendly Rust CLI for structured data + linter platform"
  homepage "https://github.com/mazuninky/dq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.47.1/dq-2026.47.1-aarch64-apple-darwin.tar.gz"
      sha256 "699cced44b49fed5a1a2958ff4f865ae012bb65592b5e445c8a287abf4c49b8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/dq/releases/download/v2026.47.1/dq-2026.47.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7caab9705391072d3753d50cf40d204217d6bac3db745f10aade225f256a78a5"
    end
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.47.1/dq-2026.47.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f07fb236558a8287066dd8c0ddfead6742fc2ef6caa574b91be8efbe979c00e3"
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
