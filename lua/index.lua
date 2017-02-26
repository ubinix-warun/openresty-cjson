if ngx.req.get_method() == "POST" then

  ngx.req.read_body() 

  local body_data = ngx.req.get_body_data()

  local cjson = require "cjson"
  local body_json = cjson.decode(body_data)

  if body_json["user"] == "dilbert" then
    ngx.say(cjson.encode(body_json))
  else
    ngx.say(body_json["user"])
  end

else
  ngx.say("<p>hello, world!!!</p>")
end

