jogadas = ['pedra', 'papel', 'tesoura', 'largato', 'spock']

def display_intro(jogadas)
  puts "====================================="
  puts "  Bem-vindo ao Jogo de Pedra, Papel, Tesoura, Largato e Spock!"
  puts "====================================="
  puts "Instruções:"
  puts "1. Escolha entre #{jogadas.join(', ')}"
  puts "2. O computador também fará uma escolha."
  puts "3. Veja quem ganha!"
  puts "====================================="
  puts
end

def logica(jogadas)
  puts "Escolha #{jogadas.join(', ')}:"
  jogada_player = gets.chomp.downcase

  jogada_computador = jogadas.sample

  puts
  # Verifica se a escolha do jogador é válida
  while !jogadas.include?(jogada_player)
    puts "Jogada inválida, escreva novamente:"
    jogada_player = gets.chomp.downcase
  end

  if jogada_player == jogada_computador
    puts "Empate! Ambos escolheram #{jogada_player.capitalize}."
  elsif (jogada_player == 'pedra' && (jogada_computador == 'tesoura' || jogada_computador == 'largato')) ||
        (jogada_player == 'papel' && (jogada_computador == 'pedra' || jogada_computador == 'spock')) ||
        (jogada_player == 'tesoura' && (jogada_computador == 'papel' || jogada_computador == 'largato')) ||
        (jogada_player == 'largato' && (jogada_computador == 'papel' || jogada_computador == 'spock')) ||
        (jogada_player == 'spock' && (jogada_computador == 'pedra' || jogada_computador == 'tesoura'))
    puts "Você ganhou! #{jogada_player.capitalize} vence #{jogada_computador.capitalize}."
  else
    puts "Você perdeu! #{jogada_computador.capitalize} vence #{jogada_player.capitalize}."
  end
end

display_intro(jogadas) # Chamada do método display_intro

logica(jogadas) # Chamada do método logica

puts
puts "Pressione Enter para sair..."
gets
