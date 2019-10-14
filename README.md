# store-env

**This project is no longer necessary, as there's an Action provided by GitHub that does the same thing better.**

> GitHub Action to store environment variables in .profile

## Basics

The Action stores its environment in its entirety inside `~/.profile`. As a
result, any action that launches using `sh -l` or with `sh` and an environment
variable `ENV=$HOME/.profile` will run in an environment that is based on it.


## Example

```
workflow "Build" {
  on = "push"
  resolves = ["build:release", "build:debug"]
}

action "settings" {
  uses = "grisumbras/store-env@master"
  env = {
    CC = "/opt/bin/cc""
  }
}

action "build:release" {
  needs = "settings"
  uses = "./ci/build"
  env = {
    BUILD_TYPE = "Release"
  }
}

action "build:debug" {
  needs = "settings"
  uses = "./ci/build"
  env = {
    BUILD_TYPE = "Debug"
  }
}
```
