local shortport = require "shortport"
local http = require "http"

description = [[
Service Test Page
]]

categories = {"safe"}

-- The Rule Section --
portrule = shortport.http

-- The Action Section --
action = function(host, port)
	local uri = "/twiki/TWikiDocumentation.html"
	local response = http.get(host, port, uri)
    if(response.status == 200) then
    	return response.body
    end
end
