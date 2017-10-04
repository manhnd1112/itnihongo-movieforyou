module ApplicationHelper
	def full_title page_title = ""
		base_title = t "app_name"
		page_title.empty? ? base_title : "#{page_title} | #{base_title}"
	end

	def time_diff(start_time, end_time)
		(start_time - end_time).to_i.abs
	end
end
