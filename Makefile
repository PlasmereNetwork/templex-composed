build:
	$(MAKE) -C VanillaVotifier build
	$(MAKE) -C GameWrapperBot build

clean:
	$(MAKE) -C VanillaVotifier clean
	$(MAKE) -C GameWrapperBot clean

run: stop
	docker-compose up -d

stop:
	docker-compose down

logs:
	docker-compose logs -f
