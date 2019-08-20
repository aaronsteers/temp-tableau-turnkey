workflow "CI-Build" {
  on = "push"
  resolves = ["command"]
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@fe7ed3ce992160973df86480b83a2f8ed581cd50"
  runs = "docker build ."
}
