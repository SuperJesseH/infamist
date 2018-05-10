class ScoreboardsController < ApplicationController
  def index

  end

  def new

    # REFACTOR WITH "WHERE" - CURRENT USE OF LOOPS VERY SLOW FOR SQL
    @scoreboard = Item.all.map do |item|
      rank = item.list_items.sum do |list_item|
        list_item.rank
      end
        if item.list_items.size > 0
          avgrank = ((rank.to_f / item.list_items.size)* item.list_items.size) / List.all.size
          [item, avgrank]
        else
          [item, 0]
        end
    end
    @scoreboard = @scoreboard.sort_by {|i| i[1]}.reverse
   end
end
