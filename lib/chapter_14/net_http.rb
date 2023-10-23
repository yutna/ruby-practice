require "net/http"

# url = URI.parse("https://www.apress.com/sitemap.xml")

# # Net::HTTP.start(url.host, url.port, use_ssl: true) do |http|
# #   req = Net::HTTP::Get.new(url.path)
# #   body = http.request(req).body
# #   puts body.force_encoding("UTF-8")
# # end

# response = Net::HTTP.get_response(url)
# puts response.body.force_encoding("UTF-8")

def get_web_document(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)

  case response
  when Net::HTTPSuccess
    return response.body.force_encoding("UTF-8")
  when Net::HTTPRedirection
    return get_web_document(response["Location"])
  else
    return nil
  end
end

# p get_web_document("https://www.apress.com/gp/about")
# p get_web_document("https://www.apress.com/doesnotexist.xml")
# p get_web_document("https://ruby-doc.org/core")
