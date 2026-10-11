module PhysicsSimulation #=very basic for now as i am only simulating this as instantaneously fusing solid spheres if I had more time i would make this into a fluid simulation that worked through having a very large viscosity this this is due to planetary collisions being very like fluid collisions in 0 gravity causing spin =#
include("vector3.jl")
mutable struct Body
      ResultantForce ::vector3.vec3
      Forces :: Vector{vector3.vec3}
      Mass :: Float64
      Velocity :: vector3.vec3
      Coordinates :: vector3.vec3
      radius::Float64

      function NewtonianG(Object1::Body, object2::Body) #= Newtonian Gravity=#
            G = 6.6743015 * 10^-11
            values = GetDistance(Object1,object2)
            (G * Object1.Mass * object2.Mass) / values.distance
            Force_vect
      end    

      function GetDistance(obj1::Body, obj2::Body)
            xdiff = obj1.Coordinates.x - obj2.Coordinates.x
            ydiff = obj1.Coordinates.y - obj2.Coordinates.y
            zdiff = obj1.Coordinates.z - obj2.Coordinates.z
            distance = sqrt((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff))
            distance_vector = vector3.vec3(xdiff, ydiff, zdiff, 0, 0, 0)
            return distance, distance_vector
      end

      function AddForces(object::Body)
            x = vector3.vec3(0,0,0,0,0,0)
            for i in len(object(Forces))
                  x += object(forces(i))
            end
        object.ResultantForce = x
      end

      function accelerate(object::Body)
            #= F=ma therefore F/m=a =#
            force = AddForces(object)
            acceleration = VecDivNumDir(force,mass)
            return acceleration
      end

      function Velocity(object::Body)
            time = 1/60
            acceleration = accelerate(object)
            initvelocity = object.Velocity
            finvelocity = AddDir(VecmMultNumDir(initvelocity, time), (acceleration, time ^ 2#=1/360=#))
            object.velocity = finvelocity
       
            return finvelocity #=final velocity=#
      end

      function NewCoordinates(object::Body)
            #=velocity = displacement over time therefore velocity times time equals displacement=#
            time = 1/60
            Velocity = Velocity(object)
            FinalCoordinates = VecmMultNumDir(Velocity, time)
            object.Coordinates = FinalCoordinates
      end

      function collision(object_a::Body, object_b::Body)
            if object_a.radius + object_b.radius > GetDistance(object_a,object_b)
                  return true #=for the fact they did collide=#
            end
      end

      function object_fuse(object_a::Body, object_b::Body) #=this will attempt to conserve momentum and create a new Body=#
            if collision(object_a, object_b) == true
                  RadiusA = object_a.radius
                  RadiusB = object_b.radius
                  newVolume = RadiusA ^ 3 * 3 * π / 4 + RadiusB ^ 3 * 3 * π / 4
                  newRadius = (newVolume * 4 / 3) ^ (1/3) #= finding the radius of the new sphere i calculated on the line above ^(1/3) is the same as taking the cube root of the
                  value if that was not clear=#
                  # new line for aesthetic purposes & for readability
                  newmass = object_a.Mass + object_b.Mass
                  newvelocity = AddDir(object_a.velocity, object_b.velocity)
                  NewCoordinates = VecMean(object_a.Coordinates, object_b.Coordinates)
            end
      end

end

end