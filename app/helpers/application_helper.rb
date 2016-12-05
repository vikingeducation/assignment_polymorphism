module ApplicationHelper

  def display_index(collection)
    collection.each do |item|
      item.name
    end
  end

  def display_index_as_link(collection)
    collection.each do |item|
      "<%= link_to \"#{item.name}\", [:index, item, :teacher] %>"
    end
  end

end
