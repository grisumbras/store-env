workflow "Test" {
  on = "push"
  resolves = "check-vars-present"
}


action "store-env1" {
  uses = "./"
  env = {
    FOO = "BAR"
    BAR = "BAZ"
  }
}


action "check-vars-present" {
  needs = "store-env1"
  uses = "./.github/check-vars-present/"
}
