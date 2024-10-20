run-dist:
	./gradlew installDist
	./build/install/app/bin/app

build:
	make -C app build

clean:
	make -C app clean

test:
	make -C app test

report:
	make -C app report

lint:
	make -C app lint

.PHONY: build clean test report lint run-dist
