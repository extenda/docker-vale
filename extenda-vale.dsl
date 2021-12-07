workspace {
  model {
    # users
    developer = person "Developer" "Extenda employee"
    pre_commit = softwareSystem "Pre-commit hooks" "Extenda pre-commit-hooks repository"
    ci_cd = softwareSystem "GitHub Actions CI/CD" "Clan repository"

    system = softwareSystem "Extenda Vale" "A system to lint natural language in markdown" {
      # artifacts
      zip = container "Extenda zip file" "Extenda Vale style latest"
      docker_image = container "docker-vale image" "Extenda docker-vale image on Extenda docker registry"

      # repositories
      docker_vale = container "docker-vale repository" "Extenda docker-vale repository"
      vale_action = container "vale-action repository" "Extenda vale-action forked of the official vale-action repository"
      vale_linting = container "vale-linting repository" "Extenda actions composition action"
    }

    # relations
    docker_vale -> zip "Produce" "GitHub release"
    docker_vale -> docker_image "Produce" "docker registry"
    pre_commit -> docker_image "Uses" "docker image"
    developer -> docker_image  "Uses" "docker image"
    developer -> pre_commit "Uses" "pre-commit hooks"
    vale_linting -> zip "Uses" "Default in composition"
    vale_linting -> vale_action "Uses" "Default in composition"
    ci_cd -> vale_linting "Uses" "Clan workflow"
  }

  views {
    container system {
          include *
    }
  }
}
