module ApplicationHelper
	def hidden_div_if(conditon, attributes = {}, &block)
		if conditon
			attributes["style"] = "display: none"
		end
		content_tag("div", attributes, &block)
	end
end
