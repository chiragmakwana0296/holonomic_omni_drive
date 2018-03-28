function sysCall_init() 
    rolling=sim.getObjectHandle('motor1')
    slipping=sim.getObjectHandle('rolar_shaft1')
    wheel=sim.getObjectHandle('Sphere1')
end
-- Following script resets the second joint on the omni-wheel (important to achieve the desired omni-wheel effect)


function sysCall_cleanup() 
 
end 

function sysCall_actuation() 
    sim.resetDynamicObject(wheel)
    sim.setObjectPosition(slipping,rolling,{0,0,0})
    
    sim.setObjectOrientation(slipping,rolling,{0,math.pi/2,0})
    sim.setObjectPosition(wheel,rolling,{0,0,0})
    sim.setObjectOrientation(wheel,rolling,{0,0,0})
end 

