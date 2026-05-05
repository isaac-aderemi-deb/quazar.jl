using OpenCL
using Vulkan
using LinearAlgebra
using DifferentialEquations
using Gtk


mutable struct vecthree
      x::Float64
      y::Float64
      z::Float64
      r::Int16
      g::Int16
      b::Int16
      
      function GetColour(vecthree)
            return [r,g,b]
      end
      function GetColourFloat(vecthree)
            r=r/255
            g=g/255
            b=b/255
            return [r,g,b]
      end
      function GetDirection(vecthree)
            return [x,y,z]
      end
      function GetDirectionNorm(vecthree)
            divisor = sqrt(x^2+y^2+z^2)
            x=x/divisor
            y=y/divisor
            z=z/divisor
            return [x,y,z]
            return (x^2+y^2+z^2)
      end
      function ColourMult(a::vecthree,b::vecthree)
            r = a.GetColourFloat[r] * b.GetColourFloat[r]
            g = a.GetColourFloat[g] * b.GetColourFloat[g]
            b = a.GetColourFloat[b] * b.GetColourFloat[b]
            return [r,g,b]
      end

end 

mutable struct body 
      vecthree :: vecthree
      mass::Float64
      volume::Float64
end
function Base.getproperty(body::body, prop::Symbol)
      if prop in fieldnames(vecthree) && !(prop in fieldnames(body))
          return getfield(body.vecthree, prop)
      else
          return getfield(body, prop)
      end
  end
# forcing previous functions to work here too 
bodyvect = vecthree(1.0,
1.0,
1.0,
255,
6,
90)
body ()