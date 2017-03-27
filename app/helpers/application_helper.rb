module ApplicationHelper
	def full_title page_title = ""
		base_title = t "layouts.base_title"
		page_title.empty? ? base_title : "#{base_title} | #{page_title}"
	end
end
