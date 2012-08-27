require 'net/http'

proxy_host = 'mombasa.garmin.com'
proxy_port = 9119
 
puts "http_proxy: " + "#{ENV['http_proxy']}" 
 
Net::HTTP.get_print 'www.google.com', '/index.html'
 
# uri = URI.parse(ENV['http_proxy'])


# # Net::HTTP.get_print 'www.google.com', '/index.html'
# 
# Net::HTTP::Proxy(proxy_host, proxy_port).start('www.google.com') { |http|
      # req = Net::HTTP::Get.new('/index.html')
      # response = http.request(req)
      # print response.body
# }
    