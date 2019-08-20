workflow "CI-Build" {
  on = "push"
  resolves = ["build"]
}

action "build" {
  uses = "."
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}
