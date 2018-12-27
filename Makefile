build:
	$(MAKE) -C VanillaVotifier build
	$(MAKE) -C templex-dockerized build
	$(MAKE) -C DiscordRelay build

clean:
	$(MAKE) -C VanillaVotifier clean
	$(MAKE) -C templex-dockerized clean
	$(MAKE) -C DiscordRelay clean

run: stop
	docker-compose up -d

stop:
	docker-compose down

logs:
	docker-compose logs -f
