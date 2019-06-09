# encoding:gbk
require "net/http"
require "uri"
url = URI.parse('https://www.ecust.edu.cn/')
http = Net::HTTP.start(url.host, url.port)
doc = http.get(url.path)
puts doc.body
