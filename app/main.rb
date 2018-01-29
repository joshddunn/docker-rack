class MyApp
  def call(env)
    serve Rack::Request.new(env).path_info
  end

  def serve(path_info)
    case path_info
    when /blog/
      [200, {"Content-Type" => "text/html"}, ["Look at all of these blog posts."]]
    when /resume/
      [200, {"Content-Type" => "text/html"}, ["Here is my resume."]]
    else
      [200, {"Content-Type" => "text/html"}, ["Hello, World!"]]
    end
  end
end
