# If you want to try this game quickly just copy paste this code
# in the FREE online IDE: https://repl.it/languages/ruby

##############################
# Look at my courses on Podia
#############################
def podia
  podia = "https://laurentgarnier.podia.com/"
  puts "Go visit my courses on Podia: #{podia}"
  puts "What if you want to create your own course?"
  puts "What if you could make money online?"
  own_course = "http://bit.ly/podia-profil"
  puts "Just click here: #{own_course}"
end

# automate the input with "> " prompt
def get_data
  print "> "
  data = $stdin.gets.chomp
  return data
end

###############################
# If you want to learn English
###############################
def learn_english
    puts "Go learn English!"
    dyse = "https://doyouspeakenglish.fr/"
    puts "If you're French, go there for FREE: #{dyse}"
    english_kit = "http://bit.ly/kit-anglais"
    puts "And for only 1€ you can get a complete starter kit here: #{english_kit}"
    grammar = "https://learnenglish.britishcouncil.org/skills"
    puts "Otherwise go there: #{grammar}"
    superprof_english = "http://bit.ly/superprof-anglais"
    puts "If you want private lessons, checkout my profile here: #{superprof_english}"
    podia
end

######################################################
# Complete human language starter kit for only 1€ each
######################################################
def starter_kit
  puts "For only 1€ per language you can get a complete starter kit:"
  german = "http://bit.ly/kit-allemand"
  arabic = "http://bit.ly/kit-arabe"
  chinese = "http://bit.ly/kit-chinois"
  spanish = "http://bit.ly/kit-espagnol"
  hebrew = "http://bit.ly/2HzxAsx"
  portuguese = "http://bit.ly/kit-portugais"
  russian = "http://bit.ly/kit-russe"

  babel_kit = {
    "german" => german,
    "arabic" => arabic,
    "chinese" => chinese,
    "spanish" => spanish,
    "hebrew" => hebrew,
    "portuguese" => portuguese,
    "russian" => russian
  }

  babel_kit.each do |key, value|
    puts "Learn #{key} for 1€ by clicking here #{value}"
  end
end

###########################################
# If you want to learn with human languages
###########################################
def learn_human_languages
    puts "Do you want to learn English?"
    puts "1. Yes"
    puts "2. No"

    english = get_data

    if english == "1"
      learn_english
    else
      babel = "https://www.youtube.com/playlist?list=PLfKvL-VUSKAnkBk88BAb3oq1MlGVnhwcY"
      puts "If you want to learn other languages, check this out for FREE: #{babel}"
      starter_kit
      podia
    end
end

#######################################
# If you want to learn more about math
######################################
def learn_math
  puts "If you need some basic maths lessons."
  prglump = "https://www.youtube.com/channel/UCLxVJHhqaLMuyTcbUsoCrFg/videos?view=0&sort=p&flow=grid"
  puts "Perhaps you can learn something on this YouTube channel #{prglump}"
  superprof_math = "https://bit.ly/2wlBbF9"
  puts "If you want more advance math private lessons, checkout my profile here: #{superprof_math}"
  podia
end

####################################
# If you want to learn more about IT
####################################
def learn_it
  interviews = "https://www.youtube.com/playlist?list=PLUJNJAesbJGVGDiZJ8WvcEC3e1O5cDb5r"
  puts "If you want to learn from the IT pros, check out this playlist #{interviews}"
  superprof_it = "http://bit.ly/superprof-info"
  puts "If you want private lessons, checkout my profile here: #{superprof_it}"
  podia
end

#################################
# If you want to learn something
#################################
def do_you_want_to_learn(something)
  puts "Do you want to learn #{something}?"
  puts "1. Yes"
  puts "2. No"

  something = get_data
  return something
end

#############################
# the main learning function
#############################
def learn

  language = do_you_want_to_learn("human languages")

  if language == "1"
    learn_human_languages
  end

  math = do_you_want_to_learn("math")

  math = get_data

  if math == "1"
    learn_math
  end

  it = do_you_want_to_learn("it")

  it = get_data

  if it == "1"
    learn_it
  end
end

##################################
# Learning is the meaning of life!
##################################
def learning
  learning = "USE YOUR TIME TO LEARN!"
  dashes = "-" * learning.length
  equals = "=" * learning.length
  puts dashes
  puts equals
  puts learning
  puts equals
  puts dashes
end

###################################################
# propose 3 easy wallet to get started with cryptos
###################################################
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
  wirex_msg1 = "\tWirex is the easiest wallet to use!\n"
  wirex_msg2 = "\tGet a visa card related to your cryptos!\n"
  wirex_msg3 = "\tWirex has just launched its own crypto!"
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

###############################################
# Say goodbye politely and propose to come back
###############################################
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
    puts "I don't know what to say because your answer is out of the box!"

  end

  thanks = "Thanks for using this program."
  puts thanks
  comeback = "I hope to see you soon."
  puts comeback
  podia
end

##########################################
# Propose to get a domain on a blockchain
##########################################
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
  end
end

#############
# buy crypto
#############
def buy_crypto
  puts "Do you want to buy crypto?"
  puts "1. Yes"
  puts "2. No"

  buy = get_data

  if buy == "1"
    puts "You have 3 good and easy options to get started:"
    wallet
    domain
  end
end


####################################################
# Learn How Blockchain Works and Different Use Case
###################################################
def cdbssr
  cdbssr = "http://bit.ly/cdbssr-free"
  puts "Maybe you could learn some basics about the technology?"
  puts "Check this out: #{cdbssr}!"
  puts "Comment Découvrir la Blockchain Sans Se Ruiner"
  puts "IT'S 100% FREE!"
  puts "For other courses"
  podia
end

####################################
# Get 4 courses, pay the price of 2
####################################
def blockchain_pack
  puts "If you want to go further, just check my blockchain pack:"
  blockchain_pack = "https://laurentgarnier.podia.com/pack-blockchain"
  puts "#{blockchain_pack}"
  puts "For other courses"
  podia
end

###############################
# Become a blockchain developer
###############################
def cddb
  cddb = "http://bit.ly/cddb-podia"
  puts "Or get my Blockchain developer bootcamp here #{cddb}"
  puts "For other courses"
  podia
end


# propose some of my courses to go further in the blockchain adventure
# be aware that all my courses are in French, but if you ask I could
# add English subtitles
def pub(course_name)
  if course_name == "cdbssr"
    cdbssr
  elsif course_name == "blockchain_pack"
    blockchain_pack
  elsif course_name == "cddb"
    cddb
  else
    podia
  end
  puts "Do you still have money?"
  puts "1. Yes"
  puts "2. No"

  money = get_data

  if money == "1"
    podia
    buy_crypto
    domain
  else
    puts "Do you want a free course?"
    puts "1. Yes, of course!"
    puts "2. No, I prefer to pay"

    free_course = get_data

    if free_course == "1"
      cdbssr
    else
      podia
      domain
    end
  end
end



# beginning of the game
puts "You browse coinmarketcap website."
puts "Which coin do you choose to track?"
puts "1) Bitcoin?"
puts "2) Ethereum?"
puts "3) Another one?"

crypto = get_data

if crypto == "1"
  puts "There's a giant whale that might create a violent crash on the market."
  puts "What do you do?"
  puts "1. Change your BTC into ETH (or EOS or NEM or others) in order to..."
  puts "   learn and build something on a blockchain (ICO, DApps...)"
  puts "2. Convert your BTC into FIAT currencies"

  crash = get_data

  if crash == "1"
    puts "The whale had destroyed the market so quickly..."
    puts "that your ETH (or other cryptos) worth nothing now!"
    puts "Game over you lose your crypto funds!"
    puts "Even though you don't have money anymore... you still have time!"
    learning
    pub("cdbssr")
    learn
    goodbye
  elsif crash == "2"
    puts "You succedded to save your money."
    puts "Well done!"
    puts "Maybe you should invest in yourself, it would be safer!"
    puts "Learning is the best investment!"
    learning
    pub("blockchain_pack")
    learn
    goodbye
  else
    puts "Well, doing %s is probably a better option for you..." % crash
    puts "in your own imaginary world!"
    learning
    learn
    goodbye
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
    puts "So you won't make money without learning!"
    puts "But you can learn how to code DApps with Solidity."
    solidity = "https://solidity.readthedocs.io/en/v0.5.8/"
    puts "Here is the official documentation #{solidity}"
    puts "And other technologies as well!"
    learning
    pub("cddb")
    learn
    goodbye
  elsif move == "2"
    puts "I hope you're ready for hard learning..."
    puts "because C++ is definitely not a peace of cake!"
    puts "And that's the tool for building DApps on EOS!"
    eos = "https://eos.io/"
    puts "Go visit this website #{eos} for more details!"
    learning
    pub("cddb")
    learn
    goodbye
  elsif move == "3"
    puts "Good news, smart contracts on NEM are built with JavaScript!"
    nem = "https://nem.io/"
    puts "Go visit this website #{nem} for more details!"
    learning
    pub("cddb")
    learn
    goodbye
  elsif move == "4"
    puts "Frankly speaking I don't know anything yet about NEO."
    puts "So you have to make your own research, good luck!"
    neo = "https://neo.org/"
    puts "Go visit this website #{neo} for more details!"
    neo-python = "https://github.com/CityOfZion/neo-python/blob/master/README.rst"
    puts "Or check this GitHub repository: #{neo-python}"
    learning
    pub("cddb")
    learn
    goodbye
  else
    learning
    learn
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
      learning
      pub("blockchain_pack")
      learn
      goodbye
    elsif wirex_coin == "2"
        xrp = "https://ripple.com/xrp/"
        puts "Go visit this website #{xrp}"
        learning
        pub("blockchain_pack")
        learn
        goodbye
    elsif wirex_coin == "3"
        waves = "https://wavesplatform.com/"
        puts "Go visit this website #{waves}"
        learning
        pub("cddb")
        learn
        goodbye
    elsif wirex_coin == "4"
        wollo = "https://pigzbe.com/"
        puts "Go visit this website #{wollo}"
        learning
        pub("cddb")
        learn
        goodbye
    elsif wirex_coin == "5"
        dai = "https://makerdao.com/en/"
        puts "Go visit this website #{dai}"
        learning
        pub("cddb")
        learn
        goodbye
    elsif wirex_coin == "6"
        nano = "https://nano.org/en"
        puts "Go visit this website #{nano}"
        learning
        pub("cddb")
        learn
        goodbye
    elsif wirex_coin == "7"
        xlm = "https://www.stellar.org/"
        puts "Go visit this website #{xlm}"
        learning
        pub("cddb")
        learn
        goodbye
    else
      learning
      learn
      goodbye
    end

  elsif wirex == "2"
    wallet = "https://bit.ly/2QgCLRH"
    puts "Go visit this website #{wallet}"
    puts "Get my FREE course"
    learning
    pub("cdbssr")
    learn
    goodbye
  else
    puts "Get my FREE course"
    learning
    pub("cdbssr")
    learn
    goodbye
  end
end
