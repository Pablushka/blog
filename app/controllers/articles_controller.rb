class ArticlesController < ApplicationController
  
  def index
    @name = "Gonza"
  end

  def authors
    @authors_list = ["Borges","Tolkien", "Biki" , "Gonza"]
  end
  def authors
    @authors_list = ["Borges", "Tolkien", "Biki", "Gonza"]
  end  
end
