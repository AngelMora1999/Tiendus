class LinkMailer < ActionMailer::Base
	default from: "downloads@tiendus.com"

	def download_link(link)
		@link = link
		@product = link.product
		mail(to: link.email,subject: "Descarga los productos que adquiriste en tiendus.com")
	end
end