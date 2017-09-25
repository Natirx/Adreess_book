require 'sinatra'

get ("/hello") do
    "<h1>Hello ,web!</h1>"
end

get ("/banana") do
    "<h1> Here's a ripe banana</h1>"
end

get ("/carrot") do
    "<h1> Here's a crunchy carrot</h1>"
end
