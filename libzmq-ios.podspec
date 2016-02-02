#
# Be sure to run `pod lib lint PinterestSDK.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "libzmq-ios"
  s.version          = "4.1.4"
  s.summary          = "ZeroMQ is a high-performance asynchronous messaging library aimed at use in scalable distributed or concurrent applications."
  s.description      = <<-DESC
                    ØMQ (also known as ZeroMQ, 0MQ, or zmq) looks like an embeddable networking library but acts like a concurrency framework. It gives you sockets that carry atomic messages across various transports like in-process, inter-process, TCP, and multicast. You can connect sockets N-to-N with patterns like fan-out, pub-sub, task distribution, and request-reply. It's fast enough to be the fabric for clustered products. Its asynchronous I/O model gives you scalable multicore applications, built as asynchronous message-processing tasks. It has a score of language APIs and runs on most operating systems. ØMQ is from iMatix and is LGPLv3 open source.
                       DESC
  s.homepage         = "http://zeromq.org"
  s.license          = { "type" => "LGPLv3", "file" => "COPYING" },
  s.author           = { "Martin Sustrik" => "sustrik@250bpm.com", "Mikko Koppanen" => "mikko.koppanen@gmail.com", "Alexey Lobanov" => "aklobanov@gmail.com" }
  s.source           = { :git => "https://github.com/zeromq/libzmq/archive/master.zip" }
  s.dependency 'libsodium-ios'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = false
  s.source_files = [ "src/*.{h,hpp,c,cc,cpp}", "include/*.h" ],
  s.public_header_files = "include/*.h",
  s.libraries = "stdc++",
  s.prepare_command = "        (\n            ./autogen.sh\n            ./configure --prefix=$PWD\n        ) | tee \"/tmp/$(basename $0).$$.tmp\"\n"
end
