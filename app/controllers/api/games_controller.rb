class Api::GamesController < ApplicationController
  def params_game_action
    @input_name = params["my_name"]
    @capitalized_name = params["my_name"].upcase
    render 'params_game_view.json.jbuilder'
  end

  def first_letter
    @name = params["name"]
    if @name.downcase[0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'first_letter.json.jbuilder'
  end

  def guess
    @number = params["guess"].to_i
    target = 42
    if @number > target
      @message = "Too high, try something lower!"
    elsif @number < target
      @message = "Too low, try something higher!"
    else
      @message = "You got it!"
    end

    render 'guess.json.jbuilder'
  end

  def segment_guess
    @number = params["my_number"].to_i
    target = 42
    if @number > target
      @message = "Too high, try something lower!"
    elsif @number < target
      @message = "Too low, try something higher!"
    else
      @message = "You got it!"
    end

    render 'segment_guess.json.jbuilder'
  end
end
