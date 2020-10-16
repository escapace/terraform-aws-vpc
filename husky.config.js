module.exports = {
  hooks: {
    'commit-msg': 'commitlint -E HUSKY_GIT_PARAMS',
    'pre-commit': 'ls-lint && AWS_REGION=us-west-1 terraform validate && terraform fmt && git update-index --again && terraform-docs markdown ./ > README.md && git add README.md'
  }
}
