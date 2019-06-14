workflow "New workflow" {
  on = "push"
  resolves = ["run build"]
}

action "run build" {
  uses = "kizzlebot/gh-actions/actions/build-cra@master"
  args = "/usr/local/bin/gh-deploy"
  secrets = [
  ]
}

