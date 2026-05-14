using Vulkan # graphics api 
using LinearAlgebra # relatively self explanitory
using DifferentialEquations # maths 
module PhysicsSimulation
include("vector3.jl")
mutable struct Body
      GPE :: Float64 #=gravitational potential energy=#
      ResultantForce ::vector3.vec3
      Mass :: Float64
      Acceleration :: vector3.vec3
      Dissplacement :: vector3.vec3
      Time :: Float64
      InitialVelocity :: vector3.vec3
      FinalVelocity :: vector3.vec3

      function NewtonianG(Object1, object2) #= Newtonian Gravity=#
            G = 6.6743015 * 10^-11
            GetDistance(Object1,object2)
            Fx = (G * Object1 * object2) / rx ^ 2
            fy = (G * Object1 * object2) / ry ^ 2
            fz = (G * Object1 * object2) / rz ^ 2
            return 
      end     
      function DeflectionAngle(ClosestDistance, m)
            G = 6.6743015 * 10^-11
            AngleOfDeflection = 4 * G * m / ClosestDistance * 299792458 ^ 2
            return AngleOfDeflection
      end
      function GetDistance(obj1, obj2)
            VectorDistance = 1
      end 
end
end