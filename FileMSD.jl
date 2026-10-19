module FileMSD # making, saving, and deleting
include("PhysicsSimulation.jl")
mutable struct FileMSD
    function CheckIfFolderExists()
        if isdir("/.QuazarFiles") == true 
            return true 
        else
            mkdir("/.QuazarFiles")
            return true
        end
    end
    function CheckIfFileExists(Name::AbstractString)
        if isfile(Name) == true 
            return true 
        else
            return false 
        end
    end
    function MakeFile()
        Make = false
        Name = readline("what are you naming this file?\n")
        if CheckIfFolderExists() && !CheckIfFileExists(Name) == true #= if 
            CheckIfFolderExists returns true and CheckIfFileExists returns false=#
            Make = true
        end 
        if Make == true 
            savefile(ObjectsArray,Name)
        end
    end
    function savefile(ObjectsArray::PhysicsSimulation.BodyColection.Colection,name::AbstractString)
        for i in 1:length()
    end 
    function deletefile
    end 
end 
end
