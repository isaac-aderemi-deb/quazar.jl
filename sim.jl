using Vulkan # graphics api 2
using LinearAlgebra # relatively self explanitory
using DifferentialEquations # more maths 
using Gtk # to make windows for all of this to run on and take inputs from the user
mutable struct Body
      colour :: {Array,3}
      GPE :: Float64 #=gravitational potential energy=#
      Force ::Float64
      Mass :: Float64
      Acceleration :: Float64
      Dissplacement :: Float64
      Time :: Float64
      InitialVelocity :: Float64
      FinalVelocity :: Float64

      function NewtonianG(m_1, m_2, r_x,r_y,r_z) #= Newtonian Gravity=#
            G = 6.6743015 * 10^-11
            F_x = (G * m_1 * m_2) / r_x ^ 2
            f_y = (G * m_1 * m_2) / r_y ^ 2
            f_z = (G * m_1 * m_2) / r_z ^ 2
            return 
      end     
      function DeflectionAngle(ClosestDistance, m)
            G = 6.6743015 * 10^-11
            AngleOfDeflection = 4 * G * m / ClosestDistance * 299792458 ^ 2
            return AngleOfDeflection
      end
      function GetDistance(m_1, m_2)
            1+1
      end
end 

function TracerWindow (nx,ny)
      touch("image.PPM")
      open("image.PPM", "w") do image  
      write(image,"P3\n" , string(nx) , " " , string(ny) , "\n" , string(255) , "\n")
      for i in 1 : ny
            for j in 1 : nx
                  r =  (nx - j) / nx
                  g = i / ny 
                  b = (i*j) / (nx*ny)
                  ir = string(Integer(255 - trunc(255.99*r)))
                  write(image, ir , " ")
                  ig = string(Integer(255 - trunc(255.99*g)))
                  write(image,ig , " ")
                  ib = string(Integer(trunc(255.9*b)))
                  write(image,ib , " ")
                  write(image, "\n")
                                    
                        end
            end
end



