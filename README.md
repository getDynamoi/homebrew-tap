# Dynamoi Homebrew Tap

**Music promotion and distribution, built for AI agents.**

This is the official [Homebrew](https://brew.sh) tap for
[Dynamoi](https://dynamoi.com). It installs the `dynamoi` command line, which
runs Dynamoi music promotion from your terminal: check Spotify and YouTube
campaign results, build free Smart Links, and launch campaigns with your
explicit consent. Dynamoi works with any distributor.

## What is a tap?

A tap is a Git repository of extra Homebrew formulae. Homebrew 7 and newer
asks you to trust a third-party tap once before installing from it.

## Install

```sh
brew trust getdynamoi/tap && brew install getdynamoi/tap/dynamoi
```

Then sign in through your browser and look around:

```sh
dynamoi login
dynamoi tools
```

## What's in this tap

| Formula | Installs | Docs |
| --- | --- | --- |
| `dynamoi` | The Dynamoi CLI, from the [`dynamoi` npm package](https://www.npmjs.com/package/dynamoi). Homebrew installs Node for you. | [CLI README](https://github.com/getDynamoi/dynamoi/tree/main/cli) |

## Why use Homebrew?

- One command installs the CLI and its Node runtime.
- `brew upgrade` keeps it current with everything else you installed.
- A daily workflow in this repository bumps the formula's version and
  checksum when npm publishes a new release.

```sh
brew update && brew upgrade dynamoi
```

## Other ways to install

Prefer npm? Run `npx dynamoi --help` once, or `npm install --global dynamoi`.
Want an AI assistant instead of a terminal? Connect it to the
[Dynamoi MCP server](https://github.com/getDynamoi/dynamoi).

MIT licensed. See [LICENSE](./LICENSE).

---

**Part of Dynamoi** · [MCP server](https://github.com/getDynamoi/dynamoi) · [CLI](https://github.com/getDynamoi/dynamoi/tree/main/cli) · [Agent plugins](https://github.com/getDynamoi/agent-plugins) · [Homebrew tap](https://github.com/getDynamoi/homebrew-tap) · [Chrome extension](https://github.com/getDynamoi/browser-extension) · [dynamoi.com](https://dynamoi.com) · [Docs](https://dynamoi.com/docs) · [Support](https://dynamoi.com/support)
