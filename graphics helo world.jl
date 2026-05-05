# graphics helo world 
nx = 2004
ny = 2004
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
@__dot__()