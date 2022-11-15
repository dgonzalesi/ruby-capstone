require_relative 'author'
require_relative 'game'

class App
  attr_reader :games, :authors, :genres, :labels

  def initialize
    @games = []
    @authors = []
    @genres = []
    @labels = []
  end

  def add_author(first_name, last_name)
    new_author = Author.new(first_name, last_name)
    @authors.push(new_author)
    new_author
  end

  def add_game(item_map, multiplayer, last_played_at)

		@games.push(Game.new(
			item_map[:genre],
			item_map[:author],
			item_map[:source],
			item_map[:label],
			item_map[:publish_date],
			multiplayer,
			last_played_at
		))

  end

	def all_games_list_str
		list_str = ''
		@games.each_with_index do |game, index|
			list_str += "[#{index}] #{game}"
		end
		list_str
	end
end
