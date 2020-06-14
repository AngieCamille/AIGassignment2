#ANGELINE MUKAMANA - 217058345

#Calliing classes to be used
include("Grid.jl")
include("Players.jl")

#Using icons from https://unicode-table.com/en/
const global Icons = ["\U2715", "\U25B3"]

#Setting number of players
numPlayers = 2
gridSize = 2

#Prompting user to choose a grid size and begin playing
if length(ARGS) == 0
    print(" CHOOSE GRID SIZE 2: ")
    gridSize = parse(Int, chomp(readline()))
    print(" PRESS 1 TO START ")
    players = chomp(readline())
elseif length(ARGS) == 1
    gridSize = parse(Int, ARGS[1])
    print(" PRESS 1 TO START ")
    players = chomp(readline())
elseif length(ARGS) == 2
    gridSize = parse(Int, ARGS[1])
    players = ARGS[2]
end

#Displaying the grid to be played on
hexgrid = Grid()
hexgrid.initializeGrid(gridSize)
hexgrid.printBoard()

#Giving each player a turn
#Calculating game scores
    for p in 1:numPlayers
        global turn += 1

    if (players[p] == '1')
        println("****** ROUND ", turn, ": FIRST PLAYER TURN ", Icons[p], " **********")
        makeTurn(hexgrid, numPlayers)
    else
        println("INVALID PLAYER: ", players[p])
        break
    end
    println("YOUR CURRENT SCORE: ", hexgrid.calculateScores())
end

#Displaying scores and winner at end of game
println(" **** GAME OVER **** ")
scores = hexgrid.calculateScores()
println("SCORES: ")
for p in 1:numPlayers
    println(Icons[p], " SCORED: ", scores[p], " POINTS")
end
println(Icons[[findmax(scores)[2]], " HAS WON!!!!!")
