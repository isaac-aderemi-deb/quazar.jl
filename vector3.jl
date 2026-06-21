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
            function AddDir(vec3_1 :: vec3, vec3_2 :: vec3)
                        outputvec3 :: vec3
                        outputvec3 = (vec3_1.x + vec3_2.x, vec3_1.y + vec3_2.y, vec3_1.z + vec3_2.z,0,0,0)
                        return outputvec3
            end
            function SubDir(vec3_1 :: vec3, vec3_2 :: vec3)
                        outputvec3::vec3
                        outputvec3 = (vec3_1.x - vec3_2.x, vec3_1.y - vec3_2.y, vec3_1.z - vec3_2.z, 0, 0, 0)
                        return outputvec3
            end
            function dot(vec3_1::vec3, vec3_2::vec3)
                        dotprod = vec3_1.x * vec3_2.x + vec3_1.y * vec3_2.y + vec3_1.z * vec3_2.z
                        return dotprod
            end
            function cross(vec3_1::vec3, vec3_2::vec3)
                        outputvec3 :: vec3
                        outputvec3.x = vec3_1.y * vec3_2.z - vec3_1.z * vec3_2.y
                        outputvec3.y = vec3_1.z * vec3_2.x - vec3_1.x * vec3_2.z
                        outputvec3.z = vec3_1.x * vec3_2.y - vec3_1.y * vec3_2.x
            end
end
end
