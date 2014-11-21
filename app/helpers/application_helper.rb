module ApplicationHelper
  def next_comic(comic)
    if comic != Comic.last
      comic.id + 1
    else
      comic.id
    end
  end

  def previous_comic(comic)
    if comic != Comic.first
      comic.id - 1
    else
      comic.id
    end
  end

  def random_comic
    1 + rand(Comic.count)
  end

  def order_month(comics)
    comics.order('created_at DESC').group_by {|comic| comic.created_at.beginning_of_month}
  end
end
