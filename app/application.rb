class Application
  @@items = {apple: 1.00, orange: .50}

  def call(env)
    resp = Rack::Response.new
    req =  Rack::Request.new 

    if req.path.match (/items/)
      items = @@items.each do |key,value|
          key
        end
        
        if path.split.last.include?()

  end





end