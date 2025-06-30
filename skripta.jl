 include("projekat.jl")
 
 A =[55 4 11 3 24 35 81 1 5 27 30 54 15 41 85 43 10 29  99 38 8 18 26 49 83 48 56 79 70 91]
 
if length(A)==0
    exit()
end

HeapSort!(A)

println("Niz sortiran Heapsort mrtodom :\n $A")