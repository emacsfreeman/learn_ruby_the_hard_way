# automate the input with "> " prompt
def get_data
  print "> "
  data = $stdin.gets.chomp
  return data
end

# propose 3 easy wallet to get started with cryptos
def wallet
  # urls
  binance_url = "http://bit.ly/binance-coinmarket"
  coinbase_url = "http://bit.ly/coinbasemacsfreeman"
  wirex_url = "https://bit.ly/2QgCLRH"

  # names
  wirex_name = "Wirex"
  coinbase_name = "CoinBase"
  binance_name = "Binance"

  #messages
  wirex_msg1 = "\tThe easiest one!\n"
  wirex_msg2 = "\tGet a visa card related to your cryptos!\n"
  wirex_msg3 = "\tHas just launched its own crypto!"
  wirex_msg = wirex_msg1 + wirex_msg2 + wirex_msg3

  # concatenate
  wirex = wirex_url + " (" + wirex_name + ")\n" + wirex_msg
  coinbase = coinbase_url + " (" + coinbase_name + ")"
  binance = binance_url + " (" + binance_name + ")"

  dashes = "-" * 2 * coinbase.length
  # menu with options to choose
  puts dashes
  puts "Option 1: #{wirex}"
  puts "Option 2: #{coinbase}"
  puts "Option 3: #{binance}"
  puts dashes
end

# Say goodbye politely and propose to come back
def goodbye
  puts "At your local time is it:"
  puts "1. Morning?"
  puts "2. Afternoon?"
  puts "3. Evening?"
  puts "4. Night?"

  time = get_data

  if time == "1" || time == "2"
    puts "Have a nice day!"

  elsif time == "3"
    puts "Have a nice evening!"
  elsif time == "4"
    puts "Good night!"
  else
    puts "I don't know what to say!"
  end

  thanks = "Thanks for using this program."
  puts thanks
  comeback = "I hope to see you soon."
  puts comeback
end

# Propose to get a domain on a blockchain
def domain
  puts "Do you know Zilliqa blockchain?"
  web_zil = "https://zilliqa.com/"
  puts "Go check their website: #{web_zil}"
  puts "Do you want to buy an unstoppable domain on Zilliqa blockchain?"
  puts "1. Yes"
  puts "2. No"
  domain = get_data
  if domain == "1"
    zil = "http://bit.ly/unstoppabledomain"
    puts "Go visit this website #{zil}"
  else
    goodbye
  end
end

# buy crypto
def buy_crypto
  puts "Do you want to by crypto?"
  puts "1. Yes"
  puts "2. No"

  buy = get_data

  if buy == "1"
    puts "You have 3 good and easy options to get started:"
    wallet

  elsif buy == "2"
    domain
  else
    goodbye
  end
end

# propose some of my courses to go further in the blockchain adventure
# be aware that all my courses are in French, but if you ask I could
# add English subtitles
def pub(course_name)
  if course_name == "cdbssr"
    cdbssr = "http://bit.ly/cdbssr-free"
    puts "Maybe you could learn some basics about the technology?"
    puts "Check this out: #{cdbssr}!"
    puts "It's free!"
  elsif course_name == "blockchain_pack"
    puts "If you want to go further, just check my blockchain pack:"
    blockchain_pack = "https://laurentgarnier.podia.com/pack-blockchain"
    puts "#{blockchain_pack}"
  elsif course_name == "cddb"
    cddb = "http://bit.ly/cddb-podia"
    puts "Or get my Blockchain developer bootcamp here #{cddb}"
  else
    podia = "https://laurentgarnier.podia.com/"
    puts "Go visit my courses page on Podia: #{podia}"
    puts "What if you want to create your own course?"
    own_course = "http://bit.ly/podia-profil"
    puts "Just click here: #{own_course}"
  end
  puts "Do you have still money?"
  puts "1. Yes"
  puts "2. No"

  money = get_data

  if money == "1"
    buy_crypto
  else
    goodbye
  end
end


puts "You browse coinmarketcap website."
puts "Which coin do you choose to track?"
puts "1) Bitcoin?"
puts "2) Ethereum?"
puts "3) Another one?"

crypto = get_data

if crypto == "1"
  puts "There's a giant whale that will create a violent crash."
  puts "What do you do?"
  puts "1. Change your BTC into ETC..."
  puts "   in order to build something (ICO, DApps...)"
  puts "2. Convert your BTC into FIAT currencies"

  crash = get_data

  if crash == "1"
    puts "The whale had destroyed the market so quickly..."
    puts "that your ETC worth nothing anymore!"
    puts "Game over!"
    puts "Since you don't have money anymore..."
    pub("cdbssr")
  elsif crash == "2"
    puts "You succedded to save your money."
    puts "Well done!"
    pub("blockchain_pack")
  else
    puts "Well, doing %s is probably a better option for you." % crash
  end

elsif crypto == "2"
  puts "Ethereum is more and more competed..."
  puts "by EOS, NEO, NEM, and so on..."
  puts "What do you choose?"
  puts "1. Save your position on Ethereum"
  puts "2. Make a move on EOS."
  puts "3. Make a move on NEM."
  puts "4. Make a move on NEO."

  move = get_data

  if move == "1"
    puts "ETH is still alive..."
    puts "but the competition is hard!"
    puts "So you won't make money."
    puts "But you can learn how to code DApps with solidity."
    solidity = "https://solidity.readthedocs.io/en/v0.5.8/"
    puts "Here is the official documentation #{solidity}"
    pub("cddb")
  elsif move == "2"
    puts "I hope you're ready for hard learning..."
    puts "because C++ is definitely not a peace of cake!"
    puts "And that's the tool for building DApps on EOS!"
    eos = "https://eos.io/"
    puts "Go visit this website #{eos} for more details!"
    pub("cddb")
  elsif move == "3"
    puts "Good news, smart contracts on NEM are build with JavaScript!"
    nem = "https://nem.io/"
    puts "Go visit this website #{nem} for more details!"
    pub("cddb")
  elsif move == "4"
    puts "Frankly speaking I don't know anything about the NEO blockchain."
    puts "So you have to make your own research, good luck!"
    neo = "https://neo.org/"
    puts "Go visit this website #{neo} for more details!"
    neo-python = "https://github.com/CityOfZion/neo-python/blob/master/README.rst"
    puts "Or check this GitHub page: #{neo-python}"
    pub("cddb")
  else
    puts "I think you need some basic maths lessons!"
    prglump = "https://www.youtube.com/channel/UCLxVJHhqaLMuyTcbUsoCrFg/videos?view=0&sort=p&flow=grid"
    puts "Perhaps you can learn something on this YouTube channel #{prglump}"
  end

elsif crypto == "3"
  puts "Do you use Wirex wallet?"
  puts "1. Yes"
  puts "2. No"

  wirex = get_data

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

    wirex_coin = get_data

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
