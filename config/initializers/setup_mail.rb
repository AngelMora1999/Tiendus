ActionMailer::Base.smtp_settings = {
	address: "smtp.gmail.com",
	port: 587,
	domain: "gmail.com",
	user_name: "eduardo.aemc@gmail.com",
	password: "12075984650990751505",
	authentication: :login,
	enable_starttls_auto: true
}