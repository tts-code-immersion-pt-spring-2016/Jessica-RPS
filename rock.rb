rps_array = ["rock" , "paper" , "scissors"]

loop do
puts "Rock, Paper, or Scissors?"
answer =gets.chomp.downcase

computer_choice = rps_array.sample

puts computer_choice

if computer_choice == answer
  puts "It's a Tie!"
elsif computer_choice ==rps_array[0] && answer == rps_array[1]
  puts "You win. Paper beats rock."
elsif computer_choice == rps_array[0] && answer == rps_array[2]
  puts "Computer wins. Rock beats scissors"
elsif computer_choice == rps_array[1] && answer == rps_array[0]
  puts "Computer wins. Paper beats rock."
elsif computer_choice == rps_array[1] && answer == rps_array[2]
  puts "You win. Scissors beats paper."
elsif computer_choice == rps_array[2] && answer == rps_array[0]
  puts "You win. Rock beats scissors"
elsif computer_choice == rps_array[2] && answer == rps_array[1]
  puts "Computer wins. Scissors beat paper."
else
  puts "hmmm, I don't recognize your answer...I guess no one wins!"
end

puts "Would you like to play again?"
answer = gets.chomp.downcase
break if answer == "no"
end
