
    --!SerializeField
    local point1: Transform = nil
    --!SerializeField
    local point2: Transform = nil

    --!SerializeField
    local speed: number = 0 
    --!SerializeField
    local movingToPoint1: boolean = false


    function self:Update()
    
        if movingToPoint1 then
        
        
            self.transform.position = Vector3.MoveTowards(self.transform.position, point1.position, speed * Time.deltaTime)

        
            if Vector3.Distance(self.transform.position, point1.position) < 0.001 then
                movingToPoint1 = false
            end
        else
    
            self.transform.position = Vector3.MoveTowards(self.transform.position, point2.position, speed * Time.deltaTime)

 
            if Vector3.Distance(self.transform.position, point2.position) < 0.001 then
            
                movingToPoint1 = true
            
            end
        end   
end