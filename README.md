# Ceres Lua Template

This repository contains a sample configuration for using Ceres with pure Lua.

There is also a [template](https://github.com/ceres-wc3/ceres-ts-template/) for setting up Ceres with TypeScript, if you prefer to use TypeScript over lau.

## Quick Start

### Prerequisites:

1. Make sure you have downloaded [Ceres](https://github.com/ceres-wc3/ceres) and put it either into this project, or your `$PATH`

### Steps

1. Clone the repository - `git clone git@github.com:ceres-wc3/ceres-lua-template.git`.
2. Run `ceres build -- --map mpq.w3x --output mpq` to build the map. The final map will be placed in `target/`

## Extra Things

### Running the map via Ceres

If you want to make Ceres to run WC3 by itself, you can use the `ceres run` command. However, before you can do that, it requires some configuration on your part.
Open up `runconfig.lua` and fill out the necessary configuration parameters. As a minimal example:

```lua
ceres.runConfig = {
    command = "C:/Program Files/Warcraft III/x86_64/Warcraft III.exe",
    args = {"-windowmode", "windowed"}
}
```

### Project Anatomy

```
maps/           - folder to put your map files in
src/            - where Ceres will read Lua files from
target/         - directory where build artifacts will be placed
build.lua       - Ceres build script, can be used to customize the build process
runconfig.lua   - user-local configuration for `ceres.runConfig`
```
