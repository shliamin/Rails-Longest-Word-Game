require 'net/http'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = (0...10).map { (65 + rand(26)).chr }.join.split("")
  end

  def score
    @letters = params[:letters].split
    @score = params[:longest_word].upcase.split("")
    @score.each do |element1|
      if @letters.include?(element1)
        @answer = valid_word
      else
        @answer = "Sorry, but #{@score.join} can not be built out of #{@letters}"
        break
      end
    end
  end

  def check?(score)
    url = "https://api.dictionaryapi.dev/api/v2/entries/en/#{score}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    object = JSON.parse(response)
    object.is_a?(Array) && object.first["word"].present?
  end

  def valid_word
    if check?(@score.join.downcase)
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
