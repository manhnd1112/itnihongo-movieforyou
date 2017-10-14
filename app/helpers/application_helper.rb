module ApplicationHelper
  def full_title page_title = ""
    base_title = t "app_name"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  def time_diff(start_time, end_time)
    (start_time - end_time).to_i.abs
  end

  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end

  def markdown content
    renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true, tables: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
      quote: true,
      highlight: true,
      tables: true,
      emoji: true
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
  
  def like review
    review.likes.find_by user_id: current_user.id
  end

  def author_rate(movie, user)
    rates = movie.rates.where(user_id: user.id)
    size = rates.size
    total = 0
    rates.each do |rate|
      total += rate.score
    end
    if size > 0
      average_rate = total * 1.0 / size
    else average_rate = 0
    end
    return average_rate
  end

  def rate movie
    rate = movie.rates.find_by user_id: current_user.id
  end
end
