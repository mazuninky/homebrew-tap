class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.20.1/atl-2026.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "2f34fd78dd4186d094bfd9a7c1c59a8e0fb91c070a9dd3f39c1298d06d83cb34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.20.1/atl-2026.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e554f57e6787cf4609797cc28c6aac907ce0c73581e37d0cdb129270a891634"
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
