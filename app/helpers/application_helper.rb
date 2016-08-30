module ApplicationHelper
	def flash_message
	   	messages = ""
	    [:success, :danger].each {|type|
	      if flash[type]
	        messages += "<div class=\"alert alert-#{type} fade in\"><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>#{flash[type]}</div>"
	      end
	    }
		messages
	end
end
