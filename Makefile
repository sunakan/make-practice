##################################################
# 変数(.gitignore)
##################################################
IGNORE_LIST    := intellij+all,linux,macos,windows,vim,emacs
GIT_IGNORE_URL := https://www.toptal.com/developers/gitignore/api/$(IGNORE_LIST)

.PHONY: gitignore
gitignore: ## gitignoreをDL
	curl --output .gitignore $(GIT_IGNORE_URL)

.PHONY: help
help: ## Make タスク一覧
	@echo '######################################################################'
	@echo '# Makeタスク一覧'
	@echo '# $$ make XXX'
	@echo '# or'
	@echo '# $$ make XXX --dry-run'
	@echo '######################################################################'
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| grep --invert-match "## non-help" \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
