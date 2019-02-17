# require_relative Casino
require "colorize"
class Slots
  def initialize
      wallet = 5000
      @wallet = wallet
      run_slots
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

  def run_slots
    slotImageList = %w[Cherry Orange Plum Bell Melon Bar]

    puts "How much total money would you like to play with today? ".yellow
    @wallet = gets.chomp.to_i
    loop do
      puts "Total cash:  $#{@wallet}".green
      puts "How much would you like to bet? ".yellow
      bet = gets.chomp.to_i

      @wallet -= bet

      slotImage1 = slotImageList.sample
      slotImage2 = slotImageList.sample
      slotImage3 = slotImageList.sample

      puts "#{slotImage1} - #{slotImage2} - #{slotImage3}".red

      winnings = bet * multiplier(slotImage1, slotImage2, slotImage3)
      puts "You have won $#{winnings}".cyan

      @wallet += winnings

      puts "Would you like to continue? (yes to continue) ".yellow
      unless gets.chomp=="yes"
        puts "You have ended with $#{@wallet}".green
        break
      end
    end
  end
end

slots = Slots.new
slots