class Application
  @@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]

  def call(env)
    resp = Rack::Response.new
    req =  Rack::Request.new

    if req.path.match (/items/)
      item_identifier = req.path.split("/items/").last
      item = @@items.find{|item| item.name == item_identifier}
      if item
        resp.write "#{item.price}"
      else
        resp.status = 400
        resp.write "Item not found"

    else
      resp.write "Route not found"
      resp.status = 404
    end

  resp.finish
end
