# Jogo "Advinhe meu número"
# escrito por você]

puts "Welcome to 'Get my number!'"

# Obtém p nome do jogador e o cumprimenta.
print "What's your name? "
input = gets
name = input.chomp
puts "Nice to meet you, #{name}!"

# Armazena um número aleatório para o jogador advinhar.
puts "I've got a random number between 1 and 100."
puts "Can you guess it? "
target = rand(100) + 1

# Monitora as tentativas do jogador
num_guesses = 0

# Monitora se o jogador advinhou corretamente
guessed_it = false

while num_guesses < 10 && guessed_it == false

   puts "You've got #{10 - num_guesses} guesses left."
   print "Make a guess: "
   guess = gets.to_i

   num_guesses += 1

   # Compara a tentativa ao alvo
   # Imprime a mensagem apropriada
   if guess < target
      puts "Oops, your guess was LOW"
   elsif guess > target
      puts "Oops, your guess was HIGH"
   elsif guess == target
      puts "Good job, #{name}!"
      puts "You guessed my number in #{num_guesses} guesses!"
      guessed_it = true
   end

end
# Se o jogador não acertar, mostrar o número alvo.
unless guessed_it
   puts "Sorry, You didn't get my number. (It was #{target}.)"
end