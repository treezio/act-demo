.PHONY: help test-custom-workflow test-ruby-workflow

help: ## Display this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@perl -nle'print $& if m{^[a-zA-Z_-]+:.*?## .*$$}' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@echo ""

test-custom-workflow: ## Test custom workflow with act
	@act pull_request --workflows '.github/workflows/custom-workflow.yaml' --eventpath '.act/pull_request_payload.json'

test-ruby-workflow: ## Test ruby workflow with act
	@act --workflows '.github/workflows/ruby-workflow.yaml'
