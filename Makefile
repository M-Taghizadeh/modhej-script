PYTHON = python3

main:
	$(PYTHON) ./scripts.py build

clean:
	rm build/ dist/ pashmak.spec -rf

update-headers:
	$(PYTHON) ./scripts.py update-headers

test:
	$(PYTHON) ./scripts.py test