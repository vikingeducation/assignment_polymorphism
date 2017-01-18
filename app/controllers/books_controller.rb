class BooksController < ApplicationController
  def index
    @books = extract_source.books
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end
  
  private

  def extract_source
    resource, id = request.path.split('/')[1,2]
    resource.singularize.classify.constantize.find(id)
  end
end
