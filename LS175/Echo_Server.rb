require "socket"
require "uri"

server = TCPServer.new("localhost", 3003)

loop do
  client = server.accept

  request_line = client.gets
  puts request_line

  http_method, path_and_params, http = request_line.split(" ")
  path, params = path_and_params.split("?")

  puts params

  params = params.split("&").each_with_object({}) do |pair, hash|
    key, value = pair.split("=")
    hash[key] = value
  end

  rolls = params["rolls"].to_i
  sides = params["sides"].to_i


  client.puts "HTTP/1.0 200 OK"
  client.puts "Content- Type: text/html"
  client.puts

  client.puts "<html>"
  client.puts "<body>"

  client.puts "<pre>"
  client.puts http_method
  client.puts path
  client.puts params
  client.puts "</pre>"

  client.puts "<h1>Rolls!</h1>"

  rolls.times do
    roll = rand(sides) + 1
    client.puts "<p>", roll, "</p>"
  end

  client.puts "</body>"
  client.puts "</html>"
  client.close
end