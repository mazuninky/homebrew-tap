# mazuninky/homebrew-tap

Homebrew formulae for two command-line tools:

| Formula | What it is |
|---|---|
| [`dq`](https://github.com/mazuninky/dq) | Query, edit, convert and lint structured data files: YAML, JSON, TOML, HCL, INI, .env, CSV, Dockerfile, Markdown frontmatter, XML |
| [`atl`](https://github.com/mazuninky/atl) | Command-line interface for Atlassian Confluence and Jira |

Both run on macOS (arm64 and x86_64) and Linux (x86_64 and arm64).

## Install

```sh
brew install mazuninky/tap/dq
brew install mazuninky/tap/atl
```

Homebrew 6 and later load a formula from a third-party tap only once it is trusted. Installing
by the full name (`mazuninky/tap/dq`) taps this repository and trusts that formula in one step. If
you tapped the repository first and install by the short name, trust the formulae yourself:

```sh
brew tap mazuninky/tap
brew trust --formula mazuninky/tap/dq mazuninky/tap/atl
brew install dq atl
```

## What a formula installs

A formula downloads the release archive for your platform from the tool's GitHub Releases and checks
it against the SHA-256 recorded in the formula. It installs the binary, the man pages and the shell
completions for bash, zsh and fish. Nothing is built from source.

## Updates

```sh
brew upgrade dq atl
```

After each release of dq or atl, a pull request here moves the formula to the new version.
`brew upgrade` picks it up once that pull request is merged.

## Problems

Issues are turned off in this repository. Report a problem with a formula in the tracker of the
tool: [dq](https://github.com/mazuninky/dq/issues) or [atl](https://github.com/mazuninky/atl/issues).
For security issues see [SECURITY.md](SECURITY.md).

## License

[MIT](LICENSE)
