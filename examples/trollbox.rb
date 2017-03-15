require "bundler/setup"
require "poloniex_ws"

client = PoloniexWs::Websocket.new

client.listen_trollbox do |args|
  puts args.inspect
end
