local myRequest = Event.new("MyRequest")
local myEvent = Event.new("MyEvent")

function self:ClientAwake()
    local myVar = "Hello World"
    myRequest:FireServer(myVar) 
    print("Client Firing Request")
    myEvent:Connect(function(arg) 
        print(arg) -- Prints "Hello World"
        print("Server response received")
    end)
    
end

function self:ServerAwake()
    print("Server Awake Running")
    myRequest:Connect(function(player, arg) 
        myEvent:FireAllClients(arg)
        print("Server Firing Response")
    end)
end

