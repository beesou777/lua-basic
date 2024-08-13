-- Simple Guess the Number Game

math.randomseed(os.time())  -- Seed the random number generator with the current time
local number_to_guess = math.random(1, 100)  -- Generate a random number between 1 and 100
local guess = nil
local attempts = 0

print("Welcome to 'Guess the Number'!")
print("I'm thinking of a number between 1 and 100. Can you guess what it is?")

while guess ~= number_to_guess do
    io.write("Enter your guess: ")
    guess = tonumber(io.read())  -- Read the user's guess and convert it to a number
    attempts = attempts + 1
    
    if guess < number_to_guess then
        print("Too low! Try again.")
    elseif guess > number_to_guess then
        print("Too high! Try again.")
    else
        print("Congratulations! You guessed the number in " .. attempts .. " attempts.")
    end
end
