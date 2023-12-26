SHELL=/bin/bash
PHONY=default build run help

.PHONY: $(PHONY)

default: help

build:
	docker build -t docker-mecab .

run:
	docker run --name mecab-container --rm -it docker-mecab sh -c "echo '吾輩わがはいは猫である。名前はまだ無い。どこで生れたかとんと見当けんとうがつかぬ。何でも薄暗い じめじめした所でニャーニャー泣いていた事だけは記憶している。' | mecab"

help:
	@echo "Usage: make build"
	@echo "Usage: make run"

