require_relative "controller"
require_relative "view"
require_relative "deck"
require_relative "card"
require "pry"

play = Controller.new
play.load_game
