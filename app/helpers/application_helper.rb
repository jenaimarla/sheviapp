module ApplicationHelper

  def current_serie
    if !session[:serie_id].nil?
      Serie.find(session[:serie_id])
    else
      Serie.new
    end
  end
end
