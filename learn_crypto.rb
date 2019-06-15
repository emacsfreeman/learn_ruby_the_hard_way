# Source for consensus algorithm: https://hackernoon.com/consensuspedia-an-encyclopedia-of-29-consensus-algorithms-e9c4b4b7d08f


# menu to choose which consensus to explore
def consensus_menu
  intro      = "What consensus algorithm do you want to study?"
  consensus1 = "1. Proof of Work (PoW)"
  consensus2 = "2. Proof of Stake (PoS)"
  consensus3 = "3. Delayed (also called Delegated) Proof of Work (dPoW)"
  quit       = "Q. Do you want to quit?"

  dashes = "-" * consensus3.length

  menu = [consensus1, consensus2, consensus3, quit]

  puts dashes
  puts intro
  puts "=" * intro.length
  menu.each { |consensus| puts consensus }
  puts dashes

  print "> "
  choice = $stdin.gets.chomp
  return choice
end

# features for each consensus
def consensus_features
  option1 = "1. Do you want to know pros and cons?"
  option2 = "2. Do you want to know some cryptos which are using this type of consensus?"
  option3 = "3. Do you want to know the consensus type?"
  option4 = "4. Do you want a global explanation?"
  option5 = "5. Do you want further reading?"
  quit = "Q. Do you want to quit?"

  dashes = "-" * option2.length

  features = [option1, option2, option3, option4, option5, quit]

  puts dashes
  features.each { |opt| puts opt }
  puts dashes

  print "> "
  choice = $stdin.gets.chomp
  return choice
end

# title
def title(name_of_algo)
  title = "Technical sheet for #{name_of_algo} consensus algorithm"
  border = "=" * title.length
  puts border
  puts title
  puts border
end
# 30 consensus type
# 1) Proof of Work
def proof_of_work
  title("Proof of Work")

  pros = "It has been tested in the wild since 2009 and stands steady today as well."

  eco_scale = "https://en.wikipedia.org/wiki/Economies_of_scale"
  cons1 = "It's slow."
  cons2 = "Uses a lot of energy."
  cons3 = "Susceptible to ecnomies of scale \n\t   (for more details about this topic click on this link:\n\t     #{eco_scale})."

  cons = [cons1, cons2, cons3]

  btc = {name: "Bitcoin", website: "https://bitcoin.org/en/"}
  eth = {name: "Ethereum", website: "https://ethereum.org/"}
  ltc = {name: "Litecoin", website: "https://litecoin.org/"}

  used_by = [btc, eth, ltc]

  consensus_type = "Competitive consensus"

  whitepaper = "https://bitcoin.org/bitcoin.pdf"

  explanation = """
  It is the first consensus algorithm (proposed by Satoshi Nakamoto introduced
  in his article #{whitepaper}) to create distributed trustless
  consensus and solves the double-spend problem. POW is not a new idea, but the
  way Satoshi combined this and other existing concepts — cryptographic signatures,
  merkle chains, and P2P networks — into a viable distributed consensus system, of
  which cryptocurrency is the first and basic application, was quite innovative.
  """

  further_reading = "https://en.bitcoin.it/wiki/Proof_of_work"

  p_o_w = {
    "pros" => pros,
    "cons" => cons,
    "used_by" => used_by,
    "consensus_type" => consensus_type,
    "explanation" => explanation,
    "further_reading" => further_reading
  }

  choice = "0"

  while !choice.include?("Q") && !choice.include?("q")
    choice = consensus_features
    if choice.include?("1")
      pros = p_o_w["pros"]
      puts "Pros: #{pros}"

      puts "Cons:"
      p_o_w["cons"].each_with_index { |val, index| puts "\t#{index+1}) #{val}" }
    elsif choice.include?("2")
      puts "Used by:"
      p_o_w["used_by"].each_with_index do
        |valeur, index|
        puts "#{index+1})"
        valeur.each do
          |key, value| puts " #{key}: #{value}"
        end
      end
      puts "And others."
    elsif choice.include?("3")
      consensus_type = p_o_w["consensus_type"]
      puts "Type: #{consensus_type}"
    elsif choice.include?("4")
      explanation = p_o_w["explanation"]
      puts "Explanation: #{explanation}"
    elsif choice.include?("5")
      further_reading = p_o_w["further_reading"]
      puts "Further Reading: #{further_reading}"
    elsif choice.include?("Q") || choice.include?("q")
      break
    else
      puts "Error"
    end
  end


end


# 2) Proof of Stake
def proof_of_stake
  title("Proof of Stake")

  eco_scale = "https://en.wikipedia.org/wiki/Economies_of_scale"
  pros1 = "Energy efficient"
  pros2 = "More expensive to attack for attackers"
  pros3 = "Not susceptible to ecnomies of scale \n\t   (for more details about this topic click on this link:\n\t     #{eco_scale})."

  pros = [pros1, pros2, pros3]

  nothing_at_stake = "https://medium.com/coinmonks/understanding-proof-of-stake-the-nothing-at-stake-theory-1f0d71bc027"
  cons = "nothing-at-stake problem \n(for more details click on this link:\n#{nothing_at_stake})"


  ppc = {name: "Peercoin", website: "https://peercoin.net/"}
  pivx = {name: "Pivx", website: "https://pivx.org/"}
  rdd = {name: "Reddcoin", website: "https://reddcoin.com/"}

  used_by = [ppc, pivx, rdd]

  consensus_type = "Competitive consensus"


  explanation = """
  The proof of stake was created as an alternative to the proof of work (PoW),
  to tackle inherent issues in the latter. Here instead of using mining, you
  have to have some stake(coins) in the system. So, if you own 10% of the
  stake(coins), then your probability of mining next block will be 10%.
  """

  further_reading = "https://en.wikipedia.org/wiki/Proof_of_stake"

  p_o_s = {
    "pros" => pros,
    "cons" => cons,
    "used_by" => used_by,
    "consensus_type" => consensus_type,
    "explanation" => explanation,
    "further_reading" => further_reading
  }

  choice = "0"

  while !choice.include?("Q") && !choice.include?("q")
    choice = consensus_features
    if choice.include?("1")
      puts "Pros:"
      p_o_s["pros"].each_with_index { |val, index| puts "\t#{index+1}) #{val}" }

      cons = p_o_s["cons"]
      puts "Cons: #{cons}"
    elsif choice.include?("2")
      puts "Used by:"
      p_o_s["used_by"].each_with_index do
        |valeur, index|
        puts "#{index+1})"
        valeur.each do
          |key, value| puts " #{key}: #{value}"
        end
      end
      puts "And others."
    elsif choice.include?("3")
      consensus_type = p_o_s["consensus_type"]
      puts "Type: #{consensus_type}"
    elsif choice.include?("4")
      explanation = p_o_s["explanation"]
      puts "Explanation: #{explanation}"
    elsif choice.include?("5")
      further_reading = p_o_s["further_reading"]
      puts "Further Reading: #{further_reading}"
    elsif choice.include?("Q") || choice.include?("q")
      break
    else
      puts "Error"
    end
  end

end


# 3) Delayed Proof of Work
def delayed_proof_of_work
  title("Delayed Proof of Work")

  pros1 = "Energy efficient"
  pros2 = "Increased security"
  pros3 = """
  Can add value to other blockchains by indirectly providing Bitcoin (or any
  secure chain) security without paying the cost of Bitcoin (or any secure
  chain) transactions
  """

  pros = [pros1, pros2, pros3]

  cons1 = "Only blockchains using PoW or PoS can be a part of this consensus."
  cons2 = '''
  Under "Notaries Active" mode the hashrate for different nodes (notary and
  normal nodes) have to be calibrated, otherwise, the difference between the
  hashrates can explode
  '''

  cons = [cons1, cons2]

  kmd = {name: "Komodo", website: "https://komodoplatform.com/"}

  used_by = [kmd]

  consensus_type = "Collaborative consensus"


  explanation = """
  Delayed Proof of Work (dPoW) is a hybrid consensus method that allows one
  blockchain to take advantage of the security provided through the hashing
  power of a secondary blockchain. This is achieved through a group of notary
  nodes that add data from the first blockchain onto the second, which would
  then require both blockchains to be compromised to undermine the security of
  the first. The first to make use of this consensus method is Komodo, which is
  attached to the Bitcoin blockchain.
  """

  further_reading = "https://developers.komodoplatform.com/"

  d_p_o_w = {
    "pros" => pros,
    "cons" => cons,
    "used_by" => used_by,
    "consensus_type" => consensus_type,
    "explanation" => explanation,
    "further_reading" => further_reading
  }

  choice = "0"

  while !choice.include?("Q") && !choice.include?("q")
    choice = consensus_features
    if choice.include?("1")
      puts "Pros:"
      d_p_o_w["pros"].each_with_index { |val, index| puts "\t#{index+1}) #{val}" }

      puts "Cons:"
      d_p_o_w["cons"].each_with_index { |val, index| puts "\t#{index+1}) #{val}" }
    elsif choice.include?("2")
      puts "Used by:"
      d_p_o_w["used_by"].each_with_index do
        |valeur, index|
        puts "#{index+1})"
        valeur.each do
          |key, value| puts " #{key}: #{value}"
        end
      end
      puts "And others."
    elsif choice.include?("3")
      consensus_type = d_p_o_w["consensus_type"]
      puts "Type: #{consensus_type}"
    elsif choice.include?("4")
      explanation = d_p_o_w["explanation"]
      puts "Explanation: #{explanation}"
    elsif choice.include?("5")
      further_reading = d_p_o_w["further_reading"]
      puts "Further Reading: #{further_reading}"
    elsif choice.include?("Q") || choice.include?("q")
      break
    else
      puts "Error"
    end
  end

end


choice = "0"
while !choice.include?("Q") && !choice.include?("q")
  choice = consensus_menu
  if choice.include?("1")
    proof_of_work
  elsif choice.include?("2")
    proof_of_stake
  elsif choice.include?("3")
    delayed_proof_of_work
  elsif choice.include?("Q") || choice.include?("q")
    break
  else
    puts "Error"
  end
end
