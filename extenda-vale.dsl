workspace {
  model {
    # users
    developer = person "Developer" "Extenda employee"
    pre_commit = softwareSystem "Pre-commit hooks" "Extenda pre-commit-hooks repository"
    ci_cd = softwareSystem "Clan repository" "GitHub Actions workflow"

    system = softwareSystem "Extenda Vale" "A system to lint natural language in markdown" {
      # artifacts
      zip = container "Extenda.zip" "Extenda Vale style"
      docker_image = container "docker-vale image" "Extenda docker-vale image on Extenda docker registry"

      # repositories
      docker_vale = container "extenda/docker-vale repository"
      vale_action = container "extenda/vale-action repository" "Fork of the official vale-action repository"
      vale_linting = container "extenda/actions repository" "Action: vale-linting"
    }

    # relations
    developer -> docker_image  "Uses" "docker image"
    developer -> pre_commit "Uses" "pre-commit hooks"

    docker_image -> pre_commit "Used in" "docker image"

    docker_vale -> zip "Produce" "GitHub release"
    docker_vale -> docker_image "Produce" "docker image"

    zip -> vale_linting "Used in"
    vale_action -> vale_linting "Used in"
    vale_linting -> ci_cd "Used in"
  }

  views {
    container system {
          include *
    }
  }
}
