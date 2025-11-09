.PHONY: create_env deps run clean

create_env:
	@echo "Creating virtual environment..."
	python3 -m venv venv

deps:
	@echo "Installing dependencies..."
	venv/bin/pip install -r requirements.txt

run: create_env deps
	@echo "Running the application..."
	venv/bin/python main.py

clean:
	@echo "Cleaning up..."
	rm -rf venv

