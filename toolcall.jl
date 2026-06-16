module toolcall
include("CelObjGen.jl"#=Celestial object(planets, stars, asteroids, etc) generator=#)
include("TSS.jl"#=time step size=#)
include("GUICalls.jl"#=inputs taken from the gui to the main program=#)
include("FileMSD.jl"#=file making, saving, and deleting=#)
include("shortcuts.jl"#=keyboard shortcuts as the gui calls will be buttons and text inputs=#)
include("RayTraceModules.jl"#=the functions that must be used for ray tracing graphics=#)
include("sphereGen.jl"#=make a sphere=#)
include("3dModelComputation.jl"#=construct a 3d model with its individual triangles (imported mesh files)=#)
end 