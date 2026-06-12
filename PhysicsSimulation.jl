module PhysicsSimulation
Main
mutable struct Body
      GPE :: Float64 #=gravitational potential energy=#
      ResultantForce ::vector3.vec3
      Forces :: Vector{Vector3.vec3}
      Mass :: Float64
      Acceleration :: vector3.vec3
      Time :: Float64
      InitialVelocity :: vector3.vec3
      FinalVelocity :: vector3.vec3
      coordinates :: vector3.vec3

      function NewtonianG(Object1::Body, object2::Body) #= Newtonian Gravity=#
            G = 6.6743015 * 10^-11
            values = GetDistance(Object1,object2)
            values.distance_vector.normalize
            (G * Object1.Mass * object2.Mass) / values.distance
            Force_vect 
      end     
      function GetDistance(obj1::Body, obj2::Body)
            xdiff = obj1.coordinates.x - obj2.coordinates.x
            ydiff = obj1.coordinates.y - obj2.coordinates.y
            zdiff = obj1.coordinates.z - obj2.coordinates.z
            distance = sqrt((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff))
            distance_vector = vector3.vec3(xdiff, ydiff, zdiff, 0, 0, 0)
            return distance, distance_vector
      end 

end
end