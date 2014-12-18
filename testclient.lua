-- pass commands to an mpv testserver script listening on a given port at a given address
-- currently quite dumb, just a script to help test for now

local port = 82312
local ip = "127.0.0.1"

local socket = require("socket")
local conn = socket.udp();

conn:setpeername(ip, port);

read = io.read();
while (read ~= nil) do
    conn:send(read);
    read = io.read();
end
conn:close();
