Rails.application.routes.draw do
  namespace :api do
    get "/params_game_url" => 'games#params_game_action'
    get "/first_letter" => 'games#first_letter'
    get '/guessing/' => 'games#guess'

    get '/guessing/:my_number' => 'games#segment_guess'
  end
end
