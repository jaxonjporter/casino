# require_relative "casino.rb"
require "pry"

class Roulette 
 
  attr_accessor :wallet
  def initialize (name, wallet)
    @name = name
    @wallet = wallet
    @array = ["red", "black"]
    @bet = 0
    # binding.pry
    bet
  end  

  def bet 
    puts "Welcome to Roulette"
    sleep (2)
    puts "How much would you like to bet?"
    puts "1) 5 Dollars"
    puts "2) 10 Dollars"
    puts "3) 15 Dollars"
    puts "4) Return to Casino"
    choice = gets.to_i
  
    case choice
      when 1
        @bet = 5 
      when 2
        @bet = 10
      when 3 
        @bet = 15
      when 4
        puts "Thanks for playing! Come again!"  
        sleep (3)
        # Casino.new(@name, @wallet)
    end    
      color
    end 


  def color
    puts "What color would you like to bet on?"
    puts "1) Red"
    puts "2) Black"
    choice = gets.to_i
    case choice 
      when 1
        if @array.sample == "red" 
          puts "You Win!!"
          @bet = @bet * 2
          @wallet += @bet
          bet
        if @array.sample == "black" 
          puts "You Lose, want to play again?"
        else 
          @wallet -= @bet
        end  
    end
  end
end
end
Roulette.new("Jaxon", 200)
