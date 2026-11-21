# Security Policy

## Reporting a vulnerability

Please do not open a public issue or pull request for a security report. Report it privately
through [GitHub Security Advisories](https://github.com/mazuninky/homebrew-tap/security/advisories/new):
only the maintainer sees it.

Include what goes wrong, how to reproduce it, and the formula and version (`brew info
mazuninky/tap/<formula>`). You should get an acknowledgement within a few days. The fix is a new
commit to the formula; the advisory is published after it is merged.

## Scope

In scope here:

- a formula that downloads from anywhere other than the GitHub Releases of
  [dq](https://github.com/mazuninky/dq/releases) or [atl](https://github.com/mazuninky/atl/releases);
- a missing or wrong `sha256`, so that Homebrew installs a file other than the one released;
- formula code that does more than install the binary, its man pages and its shell completions.

The checksum in a formula is taken from the release itself. It catches a corrupted or swapped
download, not a compromised release. Vulnerabilities in dq or atl go to their own policies:
[dq](https://github.com/mazuninky/dq/security/policy), [atl](https://github.com/mazuninky/atl/security/policy).
