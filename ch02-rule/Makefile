tmp: ## tmpがなければ作成する
	mkdir tmp

.PHONY: memo
memo: tmp ## tmp/memoにdateを追記する
	date "+%Y-%m-%d-%Hh%Mm%Ss" >> ./tmp/memo
	tail --lines 3 ./tmp/memo

.PHONY: clean
clean: ## tmpをrm -rfする
	rm -rf ./tmp/

.PHONY: variables
variables: ## 自動変数一覧をする
	@make variable-at-mark
	@make variable-percent-mark

.PHONY: variable-at-mark
variable-at-mark: ## $@ はターゲットのファイル名
	@echo '$$@ ターゲットのファイル名'
	@echo 'これは`$$ make $@`だから出力されるのは$@'
	@echo $@

.PHONY: variable-percent-mark
variable-percent-mark: ## $%
	@echo '$$% ライブラリの構成指定中の要素'
	@echo '謎'
	@echo $%
