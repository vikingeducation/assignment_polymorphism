module ApplicationHelper

  def display_index(collection)
    collection.map do |item|
      item.name
    end.join("<br>").html_safe
  end

  def display_index_as_link(collection)
    collection.map do |item|
      link_to "#{item.name}", [item, :teachers]
    end.join("<br>").html_safe
  end

end
