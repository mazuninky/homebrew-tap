class Dq < Formula
  desc "Agent-friendly Rust CLI for structured data + linter platform"
  homepage "https://github.com/mazuninky/dq"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.20.1/dq-2026.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "7b12e0752b88004ff11cd35d7948a2d173ba8434a6c671973c344fdefadd2fb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/dq/releases/download/v2026.20.1/dq-2026.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d87cc42f9d8b71665828cb8ea69de2bd8fb265ca617c42c0d8c7bd93d50298e"
    end
    on_arm do
      url "https://github.com/mazuninky/dq/releases/download/v2026.20.1/dq-2026.20.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a201b163123e6956efec2d715059d538ee7a61ab8d7975ba5650e5d3ad57974d"
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
