class ArticlesController < ApplicationController
  
  def index
    @name = "Biki"
  end
  def authors
    @authors_list = ["Borges", "Tolkien", "Biki", "Gonza"]
  end  
end
