NAME = osixia/light-baseimage
VERSION = 0.1.0

.PHONY: all build test tag_latest release build-tool

all: build

build-tool:
	./src/py_tool/build.sh

build:
	docker build -t $(NAME):$(VERSION) --rm image

test:
	env NAME=$(NAME) VERSION=$(VERSION) bats test/test.bats

tag_latest:
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

release: build test tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME)
	@echo "*** Don't forget to run 'twgit release/hotfix finish' :)"
