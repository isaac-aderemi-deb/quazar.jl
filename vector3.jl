module vector3
mutable struct vec3
    x::Float64#=x coordinate=#
    y::Float64#=y coordinate=#
    z::Float64#=z coordinate=#
    r::Int16 #=red value (1 - 255)=#
    g::Int16#=green value (1 - 255)=#
    b::Int16 #=blue value (1 - 255)=#
    function normalize(input_vect::vec3)
        vect_length = sqrt(input_vect.x ^ 2 + input_vect.y ^ 2 + input_vect.z ^2)
        input_vect = vec3(input_vect.x / vect_length, input_vect.y / vect_length, input_vect.z / vect_length, input_vect.r, input_vect.g, input_vect.b)
        return input_vect
    end
    function AddDir(vec3_1 :: vec3, vec3_2 :: vec3)#=addition of the mathematical vector not the colour of said vector=#
        outputvec3 :: vec3
        outputvec3 = (vec3_1.x + vec3_2.x, vec3_1.y + vec3_2.y, vec3_1.z + vec3_2.z,0,0,0)
        return outputvec3
    end
    function SubDir(vec3_1 :: vec3, vec3_2 :: vec3)#=subtraction of the mathematical vector not the colour of said vector=#
        outputvec3::vec3
        outputvec3 = (vec3_1.x - vec3_2.x, vec3_1.y - vec3_2.y, vec3_1.z - vec3_2.z, 0, 0, 0)
        return outputvec3
    end
    function dot(vec3_1::vec3, vec3_2::vec3)#=taking the dot product of the vectors (colour not included)=#
        dotprod = vec3_1.x * vec3_2.x + vec3_1.y * vec3_2.y + vec3_1.z * vec3_2.z
        return dotprod
    end
    function cross(vec3_1::vec3, vec3_2::vec3)#=taking the cross product of the vectors (colour not included)=#
        outputvec3::vec3
        outputvec3.x = vec3_1.y * vec3_2.z - vec3_1.z * vec3_2.y
        outputvec3.y = vec3_1.z * vec3_2.x - vec3_1.x * vec3_2.z
        outputvec3.z = vec3_1.x * vec3_2.y - vec3_1.y * vec3_2.x
    end
    function VecDivNumDir(vec3_value::vec3, number)#=vec3 object divided by a number but only dividing the values of soordinates and not colour=#
        outputvec3 = vec3(0,0,0,0,0,0)
        outputvec3.x = vec3_value.x/number
        outputvec3.y = vec3_value.y/number
        outputvec3.z = vec3_value.z/number
    end
    function VecmMultNumDir(vec3_value::vec3, number)#=vec3 object multiplied by a number but only dividing the values of soordinates and not colour=#
        if type(number) == Float64 || type(number) == Int64 # checking the type of the input as i could not do that in function definition
            outputvec3 = vec3(0,0,0,0,0,0)
            outputvec3.x = vec3_value.x*number
            outputvec3.y = vec3_value.y*number
            outputvec3.z = vec3_value.z*number
        end
    end
    function VecMean(vec_1::vec3,vec_2::vec3)#vector mean including 2 vectors
        mean_vector = VecDivNumDir(AddDir(vec_1,vec_2),2)
        return mean_vector
    end
end
end