require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = (0...10).map { (65 + rand(26)).chr }.join.split("")
  end

  def score
    @letters = params[:letters].split()
    @score = params[:longest_word].upcase.split("")
    @score.each do |element1|

      @letters.include?(element1) ? @answer = valid_word : @answer = "Sorry, but #{@score.join} can not be built out of #{@letters}"


    end
  end

  def check?(score)
    url = "https://wagon-dictionary.herokuapp.com/#{score}"
    json = open(url).read
    object = JSON.parse(json)
    object["found"]
  end

  def valid_word
      if @check = check?(@score.join.downcase)
        @english_word = "okay, this is a valid English word"
      else
        @english_word = "Sorry, but #{@score.join} does not seem to be a valid English word"
      end
  end

def index
  current_user = User.find_by_id(session[:current_user_id])
  # ...
end
end
