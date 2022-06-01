workspace {
  model {
    # users
    developer = person "Developer" "Extenda employee"
    gh_actions = softwareSystem "GitHub Action (errata-ai/vale-action@reviewdog)" "GitHub Actions workflow"
    vale_cli = softwareSystem "Vale CLI (https://vale.sh/docs/vale-cli/installation/)" "Dev env"

    system = softwareSystem "Extenda Vale" "A system to lint natural language in markdown" {
      zip = container "Extenda.zip" "Extenda Vale style"
      docker_vale = container "extenda/docker-vale repository"
    }

    docker_vale -> zip "Produces" "GitHub release"
    zip -> gh_actions "Used in"
    zip -> vale_cli "Used in"
  }

  views {
    container system {
          include *
    }
  }
}
