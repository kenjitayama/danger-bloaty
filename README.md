# danger-bloaty

A [Danger Ruby](https://github.com/danger/danger) plugin for [Bloaty McBloatface](https://github.com/google/bloaty).

This plugin is still under development, and has only one basic feature now.

## Prerequisites

1. bloaty command available in `$PATH`
  bloaty is available in Homebrew, so you can easily install with `brew install bloaty`
1. environment variable `DANGER_BLOATY_APP_BINARY_PATH` pointing to the binary you want to run bloaty with.

## Installation

    $ gem install danger-bloaty

## Usage

    Methods and attributes from this plugin are available in
    your `Dangerfile` under the `bloaty` namespace.

## Development

1. Clone this repo
2. Run `bundle install` to setup dependencies.
3. Run `bundle exec rake spec` to run the tests.
4. Use `bundle exec guard` to automatically have tests run as you make changes.
5. Make your changes.
