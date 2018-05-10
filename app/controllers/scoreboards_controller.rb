class ScoreboardsController < ApplicationController
  def index
<<<<<<< HEAD
    byebug
  end

  def new
=======
>>>>>>> 69b8b6f89f0e93202dfb1812714d61409d8a0ff3
    #MOVE TO INDEX WHEN READY
    # REFACTOR WITH "WHERE" - CURRENT USE OF LOOPS VERY SLOW FOR SQL
    @scoreboard = Item.all.map do |item|
      rank = item.list_items.sum do |list_item|
        list_item.rank
      end
        if item.list_items.size > 0
          avgrank = ((11.1-(rank.to_f / item.list_items.size)) * item.list_items.size) / List.all.size
          [item, avgrank]
        else
          [item, 0]
        end
    end
    @scoreboard = @scoreboard.sort_by {|i| i[1]}.reverse
  end

  def new

   end
end
