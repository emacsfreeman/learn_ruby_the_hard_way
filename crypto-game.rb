puts "You browse coinmarketcap website."
puts "Which coin do you choose to track?"
puts "1) Bitcoin?"
puts "2) Ethereum?"
puts "3) Another one?"

print "> "
crypto = $stdin.gets.chomp

if crypto == "1"
  puts "There's a giant whale that will create a violent crash."
  puts "What do you do?"
  puts "1. Change your BTC into ETC in order to build something (ICO, DApps...)"
  puts "2. Convert your BTC into FIAT currencies"

  print "> "
  crash = $stdin.gets.chomp

  if crash == "1"
    puts "The whale had destroyed the market so quickly..."
    puts "that your ETC worth nothing anymore!"
    puts "Game over!"
    cdbssr = "http://bit.ly/cdbssr-free"
    puts "Maybe you could learn some basics about the technology?"
    puts "Check this out: #{cdbssr}!"
    puts "It's free!"
    puts "But if you want to go further, just check my blockchain pack:"
    blockchain_pack = "https://laurentgarnier.podia.com/pack-blockchain"
    puts "#{blockchain_pack}"
  elsif crash == "2"
    puts "You succedded to save your money."
    puts "Well done!"
  else
    puts "Well, doing %s is probably a better option in your imaginary world." % crash
  end

elsif crypto == "2"
  puts "Ethereum is more and more competed..."
  puts "by EOS, NEO, NEM, and so on..."
  puts "What do you choose?"
  puts "1. Save your position on Ethereum"
  puts "2. Make a move on EOS."
  puts "3. Make a move on NEM."
  puts "4. Make a move on NEO."

  print "> "
  move = $stdin.gets.chomp

  if move == "1"
    puts "ETH is still alive..."
    puts "but the competition is hard!"
    puts "So you won't make money."
    puts "But you can learn how to code DApps with solidity."
    solidity = "https://solidity.readthedocs.io/en/v0.5.8/"
    puts "Here is the official documentation #{solidity}"
    cddb = "http://bit.ly/cddb-podia"
    puts "Or get my Blockchain developer bootcamp here #{cddb}"
  elsif move == "2"
    puts "I hope you're ready for hard learning..."
    puts "because C++ is definitely not a peace of cake!"
    puts "And that's the tool for building DApps on EOS!"
    eos = "https://eos.io/"
    puts "Go visit this website #{eos} for more details!"
    cddb = "http://bit.ly/cddb-podia"
    puts "Or get my Blockchain developer bootcamp here #{cddb}"
  elsif move == "3"
    puts "Good news, smart contracts on NEM are build with JavaScript!"
    nem = "https://nem.io/"
    puts "Go visit this website #{nem} for more details!"
    cddb = "http://bit.ly/cddb-podia"
    puts "Or get my Blockchain developer bootcamp here #{cddb}"
  elsif move == "4"
    puts "Frankly speaking I don't know anything about the NEO blockchain."
    puts "So you have to make your own research, good luck!"
    neo = "https://neo.org/"
    puts "Go visit this website #{neo} for more details!"
    cddb = "http://bit.ly/cddb-podia"
    puts "Or get my Blockchain developer bootcamp here #{cddb}"
  else
    puts "I think you need some basic maths lessons!"
    prglump = "https://www.youtube.com/channel/UCLxVJHhqaLMuyTcbUsoCrFg/videos?view=0&sort=p&flow=grid"
    puts "Perhaps you can learn something on this YouTube channel #{prglump}"
  end

elsif crypto == "3"
  puts "Do you use Wirex wallet?"
  puts "1. Yes"
  puts "2. No"

  print "> "
  wirex = $stdin.gets.chomp

  if wirex == "1"
    puts "Good job!"
    puts "Which coin do you choose to track?"
    puts "1. Litecoin?"
    puts "2. XRP?"
    puts "3. Waves?"
    puts "4. Wollo?"
    puts "5. DAI?"
    puts "6. Nano?"
    puts "7. XLM?"

    print "> "
    wirex_coin = $stdin.gets.chomp

    if wirex_coin == "1"
      ltc = "https://litecoin.org/"
      puts "Go visit this website #{ltc}"
    elsif wirex_coin == "2"
        xrp = "https://ripple.com/xrp/"
        puts "Go visit this website #{xrp}"
    elsif wirex_coin == "3"
        waves = "https://wavesplatform.com/"
        puts "Go visit this website #{waves}"
    elsif wirex_coin == "4"
        wollo = "https://pigzbe.com/"
        puts "Go visit this website #{wollo}"
    elsif wirex_coin == "5"
        dai = "https://makerdao.com/en/"
        puts "Go visit this website #{dai}"
    elsif wirex_coin == "6"
        nano = "https://nano.org/en"
        puts "Go visit this website #{nano}"
    elsif wirex_coin == "7"
        xlm = "https://www.stellar.org/"
        puts "Go visit this website #{xlm}"
    else
      puts "Go learn how to read English!"
    end

  elsif wirex == "2"
    wallet = "https://bit.ly/2QgCLRH"
    puts "Go visit this website #{wallet}"
  else
    puts "Go learn how to read English!"
  end
end
