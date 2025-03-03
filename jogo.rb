def display_intro
  puts "====================================="
  puts "  Bem-vindo ao Jogo de Pedra, Papel, Tesoura!"
  puts "====================================="
  puts "Instruções:"
  puts "1. Escolha entre Pedra, Papel ou Tesoura."
  puts "2. O computador também fará uma escolha."
  puts "3. Veja quem ganha!"
  puts "====================================="
  puts
end

def logica
  puts "Escolha Pedra, Papel ou Tesoura:"
  escolha_jogador = gets.chomp.downcase

  escolha_computador = ['pedra', 'papel', 'tesoura']
  embaralha = escolha_computador.sample

  while (escolha_jogador != 'papel') && (escolha_jogador != 'pedra') && (escolha_jogador != 'tesoura')
    puts
    puts "Jogada invalida, escreva novamente"
    escolha_jogador = gets.chomp.downcase
  end

  if escolha_jogador == embaralha
    puts "Empate! Ambos escolheram #{escolha_jogador.capitalize}."
  elsif (escolha_jogador == 'pedra' && embaralha == 'tesoura') ||
        (escolha_jogador == 'papel' && embaralha == 'pedra') ||
        (escolha_jogador == 'tesoura' && embaralha == 'papel')
    puts "Você ganhou! #{escolha_jogador.capitalize} vence #{embaralha.capitalize}."
  else
    puts "Você perdeu! #{embaralha.capitalize} vence #{escolha_jogador.capitalize}."
  end
end

display_intro # Chamada do método display_intro

logica # Chamada do método logica

puts
puts "Pressione Enter para sair..."
gets
