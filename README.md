# maragi
Conternerized version of MARAGI from daveshap. 

NOTE: This repo uses forks of the original microservices code to avoid conflicts with David's research. I'll maintain and add the required changes to David's code 
until he arrives to a point where people can contribute.

I'll update this README.md soon, but for now:

```
$ git clone https://github.com/soukron/maragi
$ cd maragi
$ git submodule init
$ git submodule update
$ echo "your OpenAI API key" > src/openaiapikey.txt
$ docker-compose up -d
```

