module ApplicationHelper
  
  def no_rank?(rank)
    if !rank
      "0"
    else
      rank
    end
  end

end
