require "sinatra"

get "/" do
  erb :index, layout: :layout
end

post "/secretdata" do
  halt 403 if params[:password] != "xyzzy"
  erb :secretdata
end

__END__

@@ layout
  <html>
    <head>
      <title>My App</title>
      <body><%= yield %></body>
    </head>
  </html>

@@ index
  <form action="/secretdata" method="POST">
    <div>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password">
    </div>

    <input type="submit" value="Log in">
  </form>

@@ secretdata
  Here's our secret data: <code>30'N 12'W</code>
