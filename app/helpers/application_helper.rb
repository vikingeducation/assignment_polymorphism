module ApplicationHelper
  def rating_stars_for(value)
    suffixes = [].fill(0..4) {|i| i >= value.to_f.round ? '-empty' : ''}
    str = '<div class="rating">'
    suffixes.each do |suffix|
      str += %Q[
        <a href="#" title="#{value.to_f} star rating">
          <span class="glyphicon glyphicon-star#{suffix}" aria-hidden="true"></span>
        </a>
      ]
    end
    str += '</div>'
    str.html_safe
  end
end
