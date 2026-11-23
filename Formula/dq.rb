class Dq < Formula
  desc "Agent-friendly Rust CLI for structured data + linter platform"
  homepage "https://github.com/mazuninky/dq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.48.1/dq-2026.48.1-aarch64-apple-darwin.tar.gz"
      sha256 "cf2242a01d0350df4a16d14d7982cc9c130110bedb4d7c5116c82a16805fd98e"
    end
    on_intel do
      url "https://github.com/mazuninky/dq/releases/download/v2026.48.1/dq-2026.48.1-x86_64-apple-darwin.tar.gz"
      sha256 "532fcd658a8147cbb279b664d9297ac5fdd8e179af192c40e7b170588ae649fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/dq/releases/download/v2026.48.1/dq-2026.48.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1edfce6f28c28256a46e4b5eb00f6e806f96c5a8c72a93af1711c79e2f3bdd58"
    end
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.48.1/dq-2026.48.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e58dcbb3e8636f0b88daf568200968f89dac8223c734381697122124f8f09360"
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
