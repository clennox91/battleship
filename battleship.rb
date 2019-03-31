unguessedWater = 0;
unguessedShip = 1;
guessedWater = 2;
guessedShip = 3;

grid = Array.new(10){ Array.new(10){ 0 } }
grid[1][1] = unguessedShip

secretShips = 1

while secretShips > 0
 (0...10).each do |i|

   (0...10).each do |j|
     if grid[i][j] == unguessedWater || grid[i][j] == unguessedShip
       print "?"
     elsif grid[i][j] == guessedWater
       print "~"
     elsif grid[i][j] == guessedShip
       print "#"
     end
   end
   puts #print one array, hits enter, prints next array
 end
puts "Enter a column number 0-9:"
userColumn = gets.chomp.to_i
puts "Enter a row number 0-9:"
userRow = gets.chomp.to_i
puts "you entered #{userColumn}, #{userRow}."

userGuess = grid[userRow][userColumn]

if userGuess == unguessedShip
    grid[userRow][userColumn] = guessedShip
    secretShips = secretShips - 1 
 puts "You sunk my ship!"
elsif userGuess == guessedShip || userGuess == guessedWater
 puts "You already guessed that"
else
grid [userRow][userColumn] = guessedWater
 userGuess == unguessedWater
 puts "You missed!"
end
end