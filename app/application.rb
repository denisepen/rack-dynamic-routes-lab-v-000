class Application
  @@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]

  def call(env)
    resp = Rack::Response.new
    req =  Rack::Request.new

    if req.path.match (/items/)


    else
      resp.write "Route not found"
      resp.status = 404
      # items = @@items.each do |key,value|
      #     key
      #   end
      # 
      #   if items.include?(path.split.last)
      #     resp.write "#{items[:key]}"
      #   else
      #     resp.write "400"

  end




  resp.finish
end
