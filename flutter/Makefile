#!make

help:
	@echo "Usage: make [test,storybook,lint,format]"
	@echo ""
	@echo "Usage:"
	@echo "  make test  	         Runs the flutter tests"
	@echo "  make run-storybook         Starts the storybook"
	@echo "  make lint  	         Runs the flutter analyzer"
	@echo "  make format       Formats the flutter code with the flutter formatter"
	@echo ""

setup:
	flutter pub get

tests: setup
	flutter test --coverage

run-storybook:
	cd ./storybook && flutter run

lint: setup
	flutter analyze .

format:
	flutter format .
