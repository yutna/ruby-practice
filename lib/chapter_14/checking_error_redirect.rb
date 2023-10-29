require "net/http"

def get_web_document(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)

  case response
  when Net::HTTPSuccess
    puts "===Success==="
    response.body.force_encoding("UTF-8")
  when Net::HTTPRedirection
    puts "===Redirection==="
    get_web_document(response["Location"])
  when Net::HTTPNotFound
    puts "404 Not Found"
  when Net::HTTPForbidden
    puts "403 Forbidden"
  else
    nil
  end
end

# puts get_web_document("https://vercel.com/crawled-sitemap.xml")
# puts get_web_document("https://www.apress.com/doesnotexist.xml")
# puts get_web_document("https://ruby-doc.org/core")
