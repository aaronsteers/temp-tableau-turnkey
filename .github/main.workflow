workflow "CI-Build" {
  on = "push"
  resolves = ["command"]
}

action "command" {
  uses = "actions/docker/cli@fe7ed3ce992160973df86480b83a2f8ed581cd50"
  runs = "docker build ."
}
