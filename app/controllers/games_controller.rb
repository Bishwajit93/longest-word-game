require 'open-uri'

class GamesController < ApplicationController
  VOWELS = %w[A E I O U]
  def new
    new_length = rand(1..26)
    @letters = Array.new(5) { VOWELS.sample }
    @letters += Array.new(new_length) { (('A'..'Z').to_a - VOWELS).sample }
    @letters.shuffle!
  end

  def score

  end

end
