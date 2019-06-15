# Source for consensus algorithm: https://hackernoon.com/consensuspedia-an-encyclopedia-of-29-consensus-algorithms-e9c4b4b7d08f

# menu for consensus
def consensus_menu
  option1 = "1. Do you want to know pros and cons?"
  option2 = "2. Do you want to know some cryptos which are using this type of consensus?"
  option3 = "3. Do you want to know the consensus type?"
  option4 = "4. Do you want a global explanation?"
  option5 = "5. Do you want further reading?"
  quit = "Q. Do you want to quit?"

  dashes = "-" * option2.length

  menu = [option1, option2, option3, option4, option5, quit]

  puts dashes
  menu.each { |opt| puts opt }
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

  cons1 = "It's slow."
  cons2 = "Uses a lot of energy."
  cons3 = "Susceptible to economies of scale."

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
    choice = consensus_menu
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

proof_of_work
