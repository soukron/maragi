# maragi
Conternerized version of MARAGI from daveshap

I'll update this README.md soon, but for now:
$ git clone https://github.com/soukron/maragi
$ cd maragi
$ git submodule init
$ git submodule update
$ echo "your OpenAI API key" > src/openaiapikey.txt
$ docker-compose up -d
