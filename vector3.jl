module vector3
mutable struct vec3
            x::Float64
            y::Float64
            z::Float64
            r::Int64
            g::Int64
            b::Int64
            function normalize(input_vect::vec3)
                        vect_length = sqrt(input_vect.x ^ 2 + input_vect.y ^ 2 + input_vect.z ^2)
                        input_vect = vec3(input_vect.x / vect_length, input_vect.y / vect_length, input_vect.z / vect_length, input_vect.r, input_vect.g, input_vect.b)
                        return input_vect
            end
end
end
