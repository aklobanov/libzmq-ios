{
  "name": "libzmq-ios",
  "version": "4.1.4",
  "summary": "ZeroMQ is a high-performance asynchronous messaging library aimed at use in scalable distributed or concurrent applications.",
  "description": "                    ØMQ (also known as ZeroMQ, 0MQ, or zmq) looks like an embeddable networking library but acts like a concurrency framework. It gives you sockets that carry atomic messages across various transports like in-process, inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fan-out, pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous message-processing tasks. It has a score of language APIs and runs on most operating systems. ØMQ is from iMatix and is LGPLv3 open source.\n",
  "homepage": "http://zeromq.org",
  "license": {
    "type": "LGPLv3",
    "file": "COPYING"
  },
  "authors": {
    "Martin Sustrik": "sustrik@250bpm.com",
    "Mikko Koppanen": "mikko.koppanen@gmail.com",
    "Alexey Lobanov": "aklobanov@gmail.com"
  },
  "platforms": {
    "ios": "8.0",
    "osx": "10.8"
  },
  "dependency": "libsodium-ios",
  "source": {
    "http": "https://github.com/zeromq/libzmq/archive/master.zip"
  },
  "source_files": [
    "src/*.{h,hpp,c,cc,cpp}",
    "include/*.h"
  ],
  "public_header_files": "include/*.h",
  "libraries": "stdc++",
  "requires_arc": false,
  "prepare_command": "        (\n            ./autogen.sh\n            ./configure --prefix=$PWD\n        ) | tee \"/tmp/$(basename $0).$$.tmp\"\n"
}
