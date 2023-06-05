file = File.open("QuestionaireData.txt")
filename = "QuestionaireData.txt"
file_data = File.read("QuestionaireData.txt").split("\n")

tempfile = "temp.txt"
File.open(tempfile , "w")
for i in 0..(file_data.length() - 2) do
    File.write(tempfile , file_data[i], mode: "a")
    File.write(tempfile , "\n", mode: "a")
end

puts "1. What is your name?"
name = gets
File.write(tempfile, "Name: #{name}", mode: "a")

puts "Hello, #{name}"

puts "2. What is your favorite food?"
food = gets
File.write(tempfile, "Favorite Food: #{food}", mode: "a")

puts "3. What is your favorite game?"
game = gets
File.write(tempfile, "Favorite Game: #{game}", mode: "a")

puts "4. What is your favorite thing about Solution Street?"
solutionStreet = gets
File.write(tempfile, "Favorite Thing About Solution Street: #{solutionStreet}", mode: "a")

puts "5. Where are you from?"
whereFrom = gets
File.write(tempfile, "Where you are from: #{whereFrom}", mode: "a")

puts "6. What is your favorite movie?"
movie = gets
File.write(tempfile, "Your favorite movie: #{movie}", mode: "a")

puts "7. Where do you want to travel to?"
travel = gets
File.write(tempfile, "Where you want to travel: #{travel}", mode: "a")

puts "8. Are you good at ping pong?"
pingpong = gets
File.write(tempfile, "If you are good at ping pong: #{pingpong}", mode: "a")

puts "9. What is your favorite sport?"
sport = gets
File.write(tempfile, "Favorite Sport: #{sport}", mode: "a")

puts "10. What do you want me to know about you?"
know = gets
File.write(tempfile, "Want me to know: #{know}", mode: "a")

File.write(tempfile, "\n", mode: "a")
File.write(tempfile, "}", mode: "a")
File.delete(filename)
File.rename(tempfile, filename)