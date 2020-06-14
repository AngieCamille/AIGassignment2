#Adding the entered items to the collection
#Informing the user they've reached the global maximum

function add(i1=Int, i2=Int, i3=Int, i4=Int, i5=Int)
    i1 + i2 + i3 + i4 + i5
end

if i1 + i2 + i3 + i4 + i5 == 50
    println("Global Maximum reached")
else
    return readline()
end
