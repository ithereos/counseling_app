class Client < ActiveRecord::Base

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	VALID_IDNUMBER_REGEX =  /\A\d{10}/

	validates :idnumber, presence: true, uniqueness: true, format: { with: VALID_IDNUMBER_REGEX }
	validates :name, presence: true
	validates :lastname, presence: true
	validates :age, presence: true	
	validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	before_save { self.email = email.downcase }

end
