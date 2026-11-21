class Dq < Formula
  desc "Agent-friendly Rust CLI for structured data + linter platform"
  homepage "https://github.com/mazuninky/dq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.47.3/dq-2026.47.3-aarch64-apple-darwin.tar.gz"
      sha256 "95feea8189e7886fa66df53d8cd562f7c375deeee6a7fc9966d981af8f066f44"
    end
    on_intel do
      url "https://github.com/mazuninky/dq/releases/download/v2026.47.3/dq-2026.47.3-x86_64-apple-darwin.tar.gz"
      sha256 "45902b89b7cfdaf63e99f710cb5acae4f2c7ae0eda3d86d1d107018384b03bb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/dq/releases/download/v2026.47.3/dq-2026.47.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c0a002ea369a7d2569e5f5d3d9880eb2665e7dff1071ba74eccc31d00d5a3d2"
    end
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.47.3/dq-2026.47.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4963ad72d158afac40e3b1100bd1f2f94b3b3604a4bcce1f8455e6f23a257e08"
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
