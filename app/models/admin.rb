class Admin < ApplicationRecord
	attr_accessor :password
	#EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
	validates :login, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
	# validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
	validates :password, :confirmation => true, :length => { :in => 6..20 } #password_confirmation attr
	validates :name,:surname, :presence => true

	before_save :encrypt_password
	after_save :clear_password


	def encrypt_password
		if password.present?
			require 'digest/sha1'
			self.encrypted_password = Digest::SHA1.hexdigest(password)
		end
	end
	def clear_password
		self.password = nil
	end
end
