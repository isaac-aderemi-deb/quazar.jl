module sphere
include("vector3.jl")
include("PhysicsSimulation.jl")
mutable struct sphere(PhysicsSimulation.Body)
            radius :: Float64
            CentrePoint :: vector3.vec3
            function getVolume(sphere)
                        volume = pi * radius ^ 3 ^ (3/4)
                        return volume
            end
            function getSurphaceArea(sphere)
                        surphaceArea = 4 * pi * radius^2
                        return surphaceArea
            end
            function checkPoint(sphere, vec :: vector3.vec3)
                        
            end
            function getTangentPlane(sphere)
                        
            end
            function getNormal(sphere, vec :: vector3.vec3)
                        
            end
end
