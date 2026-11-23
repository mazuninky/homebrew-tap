class Atl < Formula
  desc "Unified CLI for Atlassian Jira & Confluence"
  homepage "https://github.com/mazuninky/atl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.3/atl-2026.48.3-aarch64-apple-darwin.tar.gz"
      sha256 "08f89f1b6aea471cebf133a27e3267a1eb5077882d36a00a133a472c08b16573"
    end
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.3/atl-2026.48.3-x86_64-apple-darwin.tar.gz"
      sha256 "58075bf0eecb52b1302e389f0f829b4d5e64f43974a6fbc74ddcfa47ffcc12ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.3/atl-2026.48.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb17f9ec7e41c79c2b1c0d2805fb044fd01d1c638000a00a65df7b601fd9025f"
    end
    on_arm do
      url "https://github.com/mazuninky/atl/releases/download/v2026.48.3/atl-2026.48.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e39c4a4543c9e01db064cc82eb7bfc6393495fc5f0b8e2e21a19a3d678c4d93"
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
