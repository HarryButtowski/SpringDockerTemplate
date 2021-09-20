Шаблон для Java приложения написанный по мативам
[Spring Boot with Docker](https://spring.io/guides/gs/spring-boot-docker/)

В Makefile распаковка каждого jar файла
> cd build/dependency && jar -xf ../libs/spring-with-docker-0.0.1-SNAPSHOT.jar
> cd build/dependency && jar -xf ../libs/spring-with-docker-0.0.1-SNAPSHOT-plain.jar

происходит вместо wildcard
> *.jar 

по причине, что при билде докерфайла слои берутся из кеша и поэтому изменения не подтягиваются. 