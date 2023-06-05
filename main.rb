file = File.open("QuestionaireData.txt")
filename = "QuestionaireData.txt"
file_data = File.read("QuestionaireData.txt").split("\n")

tempfile = "temp.txt"
File.open(tempfile , "w")
for i in 0..(file_data.length() - 2) do
    File.write(tempfile , file_data[i], mode: "a")
    File.write(tempfile , "\n", mode: "a")
end

questions = Array[
    "1. What is your name?",
    "2. What is your favorite food?",
    "3. What is your favorite game?",
    "4. What is your favorite thing about Solution Street?",
    "5. Where are you from?",
    "6. What is your favorite movie?",
    "7. Where do you want to travel to?",
    "8. Are you good at ping pong?",
    "9. What is your favorite sport?",
    "10. What do you want me to know about you?"
]

descriptions = Array[
    "Name: ",
    "Favorite Food: ",
    "Favorite Game: ",
    "Favorite Thing About Solution Street: ",
    "Where you are from: ",
    "Your favorite movie: ",
    "Where you want to travel: ",
    "If you are good at ping pong: ",
    "Favorite Sport: ",
    "Want me to know: "
]

for i in (0..questions.length() - 1) do
    puts questions[i]
    answer = gets
    File.write(tempfile, descriptions[i] + answer, mode: "a")
end

File.write(tempfile, "\n", mode: "a")
File.write(tempfile, "}", mode: "a")
File.delete(filename)
File.rename(tempfile, filename)