module RayTraceModules
include("LightSource.jl"#=an object that emmits light will have these properties, it will cast light perpendicular to its surface at a certain density =#)
include("refmodule.jl"#=reflections module=#)
include("refract.jl"#=refraction (light changing in direction dependent on its medium(material it can go through)) module=#)
include("GravLens.jl"#=computation of reletavistic affects on light like how around a black hole there is that area of very bent light=#)
include("RaySca.jl"#=rays scatter on many surphaces and therefore we must compute this using a random module to imporve realism=#)
include("TextureMap"#=an attempt to map pixels to the mesh that is generated=#)
end 