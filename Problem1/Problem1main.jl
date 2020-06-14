#Calling from LocalMax and GlobalMax class
include("LocalMax.jl")
include("GlobalMax.jl")

#Setting the values to a limit of 5
#Setting the weights to 5 values
Values = ([1, 2, 3, 4, 5])
Weights = Values

#Informing the user of the limit of items to be entered
#Informing the user of the maximum value limit of items entered
println("Only 5 items can be added. They should not total up to more than 50")

#Prompting user to enter the first item
function weight(i1=Int, msg="")

    if i1 == Int
        print("$msg")
        return readline()
    end

#Informing user their item has reached the maximum weight
function weight(i1=Int, Maxmsg="")

    if i1 == 50
        print("$Maxmsg")
        return readline()
    else
        println(i1)
        return readline()
    end

#Informing user their item has exceeded the maximum weight
function weight(i1=Int, Outmsg="")

    if i1 > 50
        print("$Outmsg")
        return readline()
    else
        println(i1)
        return readline()
    end

#Informing user their item has reached the maximum weight
function weight(i2=Int, Addmsg1="")

    if i1 < 50
        print("$Addmsg1")
        return readline()

    if i2 == Int
        return readline()
    end

#Informing user to add another item
function weight(i3=Int, Addmsg2="")

    if i3 == Int
        print("$Addmsg2")
        return readline()
    end

#Informing user to add another item
function weight(i4=Int, Addmsg3="")

    if i4 == Int
        print("$Addmsg3")
        return readline()
    end

#Informing user to add another item
function weight(i5=Int, Addmsg4="")

        if i5 == Int
            print("$Addmsg4")
            return readline()
        end
end
end
end
end
end
end
end
end

#Messages prompting users on what to do
msg = weight(Int, "Please enter your first weight: ")
Maxmsg = weight(Int, "Collection full, change here: ")
Outmsg = weight(Int, "Out of collection, change here: ")
Addmsg1 = weight(Int, "Add second weight here: ")
Addmsg2 = weight(Int, "Add third weight here: ")
Addmsg3 = weight(Int, "Add fourth weight here: ")
Addmsg4 = weight(Int, "Add last weight here: ")
