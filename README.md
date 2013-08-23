dockerfiles
===========

Listing of docker images that we use.


Example Usage

```Batchfile
docker build -t praeses/ruby_1.9.3 - < Dockerfile.ruby_1.9.3
docker build -t praeses/ruby_1.9.3:xorg - < Dockerfile.ruby_1.9.3:xorg
docker build -t praeses/ruby_1.9.3:free_tds - < Dockerfile.ruby_1.9.3:free_tds
docker build -t praeses/mongodb_2.4.5 - < Dockerfile.mongodb_2.4.5
docker build -t praeses/redis_2.2.12 - < Dockerfile.redis_2.2.12
```

or with urls

```
docker build -t praeses/ruby_1.9.3 http://git.io/8Tft8w
docker build -t praeses/ruby_1.9.3:xorg http://git.it/8p2_HQ
docker build -t praeses/ruby_1.9.3:free_tds http://git.io/eZL9PQ
docker build -t praeses/mongodb_2.4.5 http://git.io/KtW-vw
docker build -t praeses/redis_2.2.12 http://git.it/1kteSA
```
