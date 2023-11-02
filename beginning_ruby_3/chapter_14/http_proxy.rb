require "net/http"

web_proxy = Net::HTTP.Proxy("localhost", 3001)
url = URI.parse("http://localhost:3000/entries")

# web_proxy.start(url.host, url.port) do |http|
#   req = Net::HTTP::Get.new(url.path)
#   puts http.request(req).body.force_encoding("UTF-8")
# end

# response = web_proxy.get_response(url)
# puts response.body.force_encoding("UTF-8")

http_class = ARGV.first ? Net::HTTP.Proxy(ARGV[0], ARGV[1]) : Net::HTTP
response = http_class.get_response(url)
puts response.body.force_encoding("UTF-8")

# Create Node.js for proxy server here
# ====================================

# const express = require("express");
# const morgan = require("morgan");
# const { createProxyMiddleware } = require("http-proxy-middleware");

# // Create Express Server
# const app = express();

# // Configuration
# const PORT = 3001;
# const HOST = "localhost";
# const WEB_SERVICE_URL = "http://localhost:3000";

# // Logging
# app.use(morgan("dev"));

# // Info GET endpoint
# app.get("/info", (req, res, next) => {
#   res.send("This is a proxy service which proxies to Diary web server.");
# });

# // Proxy endpoints
# app.use(
#   "/",
#   createProxyMiddleware({
#     target: WEB_SERVICE_URL,
#     changeOrigin: true,
#     pathRewrite: {
#       ["^/"]: "",
#     },
#   })
# );

# // Start the Proxy
# app.listen(PORT, HOST, () => {
#   console.log(`Starting Proxy at ${HOST}:${PORT}`);
# });
