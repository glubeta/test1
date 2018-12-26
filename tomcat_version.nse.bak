local shortport = require "shortport"
local http = require "http"
local stdnse = require "stdnse"

description = [[
Version Check
]]

categories = {"safe","version"}

-- The Rule Section --
portrule = shortport.http

-- The Action Section --
action = function(host, port)

    local uri = "/licenses/LICENSE-2.0.html"
    local response = http.get(host, port, uri)

    if ( response.status == 200 ) then
        local title = string.match(response.body, "<[Tt][Ii][Tt][Ll][Ee][^>]*>([^<]*)</[Tt][Ii][Tt][Ll][Ee]>")
        return title
    end

end
# 밑에다가 추가했지롱, 첫번째줄 공백 지웠지롱