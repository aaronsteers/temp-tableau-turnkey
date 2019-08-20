workflow "CI-Build" {
  on = "push"
  resolves = ["build"]
}

action "build" {
  uses = "./docker-image"
  env = {
    MY_NAME = "Mona"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}
