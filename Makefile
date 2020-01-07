ROOT = $(shell pwd)

build-in-vagrant:
	$(shell rm -rf /tmp/ics)
	$(shell cp -rp $(ROOT) /tmp/)
	$(shell cd /tmp/ics && mix deps.get)
	$(shell cd /tmp/ics/assets && npm install && node node_modules/webpack/bin/webpack.js --mode development)

start-in-vagrant:
	$(shell cd /tmp/ics && mix phx.server)