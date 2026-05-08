using Vulkan # graphics api 
using LinearAlgebra # relatively self explanitory
using DifferentialEquations # maths 
module PhysicsSimulation
mutable struct Body
      GPE :: Float64 #=gravitational potential energy=#
      Force ::Float64
      Mass :: Float64
      Acceleration :: Float64
      Dissplacement :: Float64
      Time :: Float64
      InitialVelocity :: Float64
      FinalVelocity :: Float64

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
            VectorDistance = 
      end 
end