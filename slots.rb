require "casino.rb"
require "colorize"
class Slots
  def initialize
    def wallet  # for testing/ delete after.
      wallet = 5000
      @wallet = wallet
      run_slots
    end
  end

  def multiplier(s1, s2, s3)
    if s1==s2 && s2==s3
      3
    elsif s1==s2 || s2==s3 || s1==s3
      2
    else
      0
    end
  end

  def run_slots!
    slotImageList = %w[Cherry Orange Plum Bell Melon Bar]

    puts "How much total money would you like to play with today? "
    cash = gets.chomp.to_i
    loop do
      puts "Total cash:  $#{cash}"
      puts "How much would you like to bet? "
      bet = gets.chomp.to_i

      @wallet -= bet

      slotImage1 = slotImageList.sample
      slotImage2 = slotImageList.sample
      slotImage3 = slotImageList.sample

      puts "#{slotImage1} - #{slotImage2} - #{slotImage3}"

      winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
      puts "You have won $#{winnings}"

      @wallet += winnings

      puts "Would you like to continue? (yes to continue) "
      unless gets.chomp=="yes"
        puts "You have ended with $#{@wallet}"
        break
      end
    end
  end
end

slots = Slots.new
slots