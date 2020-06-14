function makeTurn(grid, players::Int)
#Prompt input and check validity
    humanMoves = Array{Array{Int,1},1}()
    for p in 1:players
        row, col = 0, 0
        while true
#Prompt user for move choice
            println("WHERE DOES PLAYER ", Icons[p], " WANT TO PLAY? (ENTER AS: ROW -- SPACE -- COLUMN) ")
            humanInput = chomp(readline())
            try
                row, col = parse(Int, split(humanInput)[1]), parse(Int, split(humanInput)[end])
            catch
                row, col = 0, 0
            end
#Check if input is valid, prompt again if not valid
            if grid.getGridValue(row, col) == 1
                push!(humanMoves, [row, col])
                break
            end
            println("ENTER A CHOICE BETWEEN 1 AND ", 2*grid.getOffset() +1, ".")
        end

#Setting where user has played
grid.setGridValue!(row, col, p+1)
println(Icons[p], " PLAYED ON (", row, ", ", col, ")")
grid.printBoard()
end

#Promptiong user to change move
    println("IF YOU AREN'T HAPPY, PRESS 2 TO REPLAY MOVES... PRESS 3 TO KEEP PLAYING")
    humanInput = chomp(readline())
    if (humanInput == "2")
        grid.setGridValue!(humanMoves[2][1], humanMoves[2][2], 1)
        grid.setGridValue!(humanMoves[1][1], humanMoves[1][2], 1)
        grid.printBoard()
        makeTurn(grid, players)
    else

        for p in 1:players
            row, col = 0, 0
            while true

        if (humanInput == "3")
            #Prompt user for move choice
                        println("WHERE DOES PLAYER ", Icons[p], " WANT TO PLAY? (ENTER AS: ROW -- SPACE -- COLUMN) ")
                        humanInput = chomp(readline())
                        try
                            row, col = parse(Int, split(humanInput)[1]), parse(Int, split(humanInput)[end])
                        catch
                            row, col = 0, 0
                        end
            #Check if input is valid, prompt again if not valid
                        if grid.getGridValue(row, col) == 1
                            push!(humanMoves, [row, col])
                            break
                        end
                        println("ENTER A CHOICE BETWEEN 1 AND ", 2*grid.getOffset() +1, ".")
                    end

            #Setting where user has played
            grid.setGridValue!(row, col, p+1)
            println(Icons[p], " PLAYED ON (", row, ", ", col, ")")
            grid.printBoard()
            break
            end
end
end
end
