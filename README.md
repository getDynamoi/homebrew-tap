# Homebrew tap for Dynamoi

Homebrew formulae for [Dynamoi](https://dynamoi.com): music promotion and distribution, built for AI agents.

## Install

```sh
brew trust getdynamoi/tap   # Homebrew 7+ requires trusting third-party taps
brew install getdynamoi/tap/dynamoi
```

Then sign in:

```sh
dynamoi login
```

The CLI source and docs live at <https://github.com/getDynamoi/dynamoi>.

## Updates

The formula auto-tracks the [`dynamoi` npm package](https://www.npmjs.com/package/dynamoi): a daily workflow bumps the version and checksum when npm publishes a newer release. Run `brew update && brew upgrade dynamoi` to pick it up.
