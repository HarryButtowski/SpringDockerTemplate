run:
	./gradlew build
	mkdir -p build/dependency
	#cd build/dependency && jar -xf ../libs/*.jar
	cd build/dependency && jar -xf ../libs/spring-with-docker-0.0.1-SNAPSHOT.jar
	cd build/dependency && jar -xf ../libs/spring-with-docker-0.0.1-SNAPSHOT-plain.jar
	docker build -t spring-with-docker .
	#docker build --no-cache -t spring-with-docker .
	docker run --rm -p 8080:8080 spring-with-docker