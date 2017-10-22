class Supports::Reviews
  attr_reader :review

  def initialize review
    @review = review
  end

  def reviews_search
    search.result.page(@review[:param][:page]).per(4)
  end

  def search
    search = Review.ransack @review[:param][:q]
    search.sorts = %w(created_at\ desc) if search.sorts.empty?
    search
  end

  def comments
    params = @review[:param]
    review = Review.find_by id: params[:id]
    review.comments.order("created_at desc").page(params[:page]).per(5)
  end

  def top_reviews
    Review.all.order("created_at desc").limit(5)
  end
  
  def recent_reviews
    Review.all.order("created_at desc").limit(3)
  end

  def load_movies
    Movie.all.order("name asc").map{|p| [p.name, p.id]}
  end

  def new_comment
    Comment.new
  end
end
