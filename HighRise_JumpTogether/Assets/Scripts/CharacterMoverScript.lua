--!SerializeField
local moveSpeed: number = 0
--!SerializeField
local rotationSpeed:number = 0

--!SerializeField
local way_point1: Transform  = nil
--!Serializefield
local way_point2: Transform  = nil
--!Serializefield
local way_point3: Transform  = nil
 --!Serializefield
local way_point4: Transform  = nil
 --!Serializefield
local waypoint_index: number = 1

local waypoints = {way_point1,way_point2,way_point3,way_point4}

-- function self:Start()
--   waypoint_index = 1
-- end

-- function self:Update()

--   --Vector3 wayPointPosVec = new Vector3(wayPoints[wayPointIndex].transform.position.x, transform.position.y, wayPoints[wayPointIndex].transform.position.z);
--   local waypoint_pos_vec: Vector3 = Vector3.new(waypoints[waypoint_index].x, waypoints[waypoint_index].y, waypoints[waypoint_index].z)

--   if (self.transform.position == waypoint_pos_vec) then
        

--            if waypoint_index >= 4 then
--               waypoint_index = 0
--            else
--             waypoint_index += 1;
--            end
--   end

--   self.transform.LookAt(waypoint_pos_vec);
--   local  direction:Vector3 = (waypoint_pos_vec - self.transform.position);
--   direction.y = 0;
-- --local targetRotation:Quaternion = Quaternion.LookRotation(direction);
--   self.transform.rotation = Quaternion.Lerp(self.transform.rotation, self.targetRotation, self.rotateSpeed * Time.deltaTime);

--   self.transform.position = Vector3.MoveTowards(self.transform.position,  Vector3.new(waypoints[waypoint_index].transform.position.x,
--   self.transform.position.y, waypoints[waypoint_index].transform.position.z), moveSpeed * Time.deltaTime);


--   self.transform.position = Vector3.MoveTowards(self.transform.position,  Vector3.new(waypoints[waypoint_index].transform.position.x,
--       self.transform.position.y, waypoints[waypoint_index].transform.position.z), moveSpeed * Time.deltaTime);

-- end