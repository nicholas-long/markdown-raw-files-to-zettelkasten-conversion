# example github actions scripts

github actions scripts notes.
- should be possible to run with args
  - do it in a branch somehwere because there's lots of commits for testing

run command on demand from actions panel
```yaml
# This is a basic workflow to help you get started with Actions

name: create

# Controls when the workflow will run
on:
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest
    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      - uses: actions/checkout@v3
      # Runs a single command using the runners shell
      - name: create
        run: ./zc new -r 20221007185940
      # Runs a set of commands using the runners shell
      - name: print diff
        run: git diff
      # commit and push
      - uses: stefanzweifel/git-auto-commit-action@v4
        with:
          commit_message: automatic link enrich
```

run command for every new commit
```yaml
# This is a basic workflow to help you get started with Actions

name: enrichlinks

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" branch
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest
    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      - uses: actions/checkout@v3

      # Runs a single command using the runners shell
      - name: autogenerate
        run: ./zc enrich

      # Runs a set of commands using the runners shell
      - name: print diff
        run: git diff

      # commit and push
      - uses: stefanzweifel/git-auto-commit-action@v4
        with:
          commit_message: automatic link enrich
```

` zet/20221007193634/README.md `

# Related

- [20221007194303](/zet/20221007194303/README.md) github
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221003151281](/zet/20221003151281/README.md) YAML
- [20221007193324](/zet/20221007193324/README.md) github actions

Tags:

    #todo
