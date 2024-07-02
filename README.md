This is the repo for the CSWG website. It is a Hugo site, and the content is written in Markdown.

## Contributing Instructions
1. Make sure you have [Hugo](https://gohugo.io/getting-started/installing/) installed
2. Create an issue to discuss the changes you'd like to make or find an existing issue to work on.
3. Fork this repository: [https://github.com/ciwg/cswg](https://github.com/ciwg/cswg)
4. Clone your forked repository to your local machine & `cd` into the directory
5. Create a new branch to work on your changes. The branch name should include the issue number you created and short description of the changes you're making. For example:
    ```
    git checkout -b 23_fix_typo_in_index
    ```
6. Run `hugo server` to start a local server
7. Make your changes
8. Push your changes to your forked repository
9. Create a pull request to merge your changes into the main repository
10. Wait for your changes to be reviewed and merged
    1. To keep your PR viable, you may need to rebase your branch on the main branch if there are conflicts.
    ```
    git checkout main
    git pull upstream main
    git checkout your-branch-name
    git rebase main
    git push
    ```
