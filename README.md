This is the repo for the CSWG website, https://cswg.infrastructures.org/

This site is built using Hugo, a static site generator written in Go. Most of the content is written in Markdown.

## Quick Start (Run Local Development)

1. Install Hugo: https://gohugo.io/installation/
2. Fork this repository on GitHub.
3. Clone the forked repo to your local machine.
4. Navigate to the project directory.
5. Run `make clean-fork`. (Helpful setup for contributing later.)
6. Start the Hugo server: `hugo server`
7. Open your browser and navigate to `http://localhost:1313` to view the site.


## Contributor Workflow

Before starting, make sure you've forked the repo and are able to get the local environment running. See the Quick Start section above.

1. Create an issue to discuss the changes you'd like to make or find an existing issue to work on.
2. Create a new branch to work on your changes. The branch name should include the issue number you created and short description of the changes you're making. For example:
    ```
    git checkout -b 23_fix_typo_in_index
    ```
3. Run `hugo server` to start a local server
4. Make your changes
5. Push your changes to your forked repository
6. Create a pull request to merge your changes into the main repository
7. Wait for your changes to be reviewed and merged.
    To keep your PR viable, you may need to rebase your branch on the main branch if there are conflicts.
    ```
    git checkout main
    git pull upstream main
    git checkout your-branch-name
    git rebase main
    git push
    ```
