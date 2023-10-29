require "net/http"

url = URI.parse("http://localhost:3000/entries")

payload = {
  "authenticity_token" =>
    "34-IC7QnTW-WhQIXtgDxWlm2_qX23Qylp7vFoQuBoKt6wf_cvn7wW3pvHRPnYqlXZptUOopK25y-T7G1k0Gffg",
  "entry[title]" => "Title #1",
  "entry[content]" => "Sample Content"
}

response = Net::HTTP.post_form(url, payload)
puts response.body

# Net::HTTP.start(url.host, url.port) do |http|
#   req = Net::HTTP::Post.new(url.path)
#   req.set_form_data(payload)
#   puts http.request(req).body
# end
