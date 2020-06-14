#Adding the entered items to the collection
#Informing the user they've reached the local maximum
function add(i1=Int, i2=Int)
    i1 + i2
end

if i1 + i2 == 50
    println("Local Maximum reached")
else
    return readline()
end

function add(i1=Int, i2=Int, i3=Int)
    i1 + i2 + i3
end

if i1 + i2 + i3 == 50
    println("Local Maximum reached")
else
    return readline()
end

function add(i1=Int, i2=Int, i3=Int, i4=Int)
    i1 + i2 + i3 + i4
end

if i1 + i2 + i3 + i4 == 50
    println("Local Maximum reached")
else
    return readline()
end
