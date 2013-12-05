class Usuario < ActiveRecord::Base
    authenticates_with_sorcery!
    validates_confirmation_of :crypted_password, message: 'Ambos campos deben coincidir', if: :password

    def encrypt_password
		self.password = password#Digest::MD5.hexdigest(password)
	end

	def self.validate_login(email, password)
		user = Usuario.find_by_email(email)

		if user && user.password === password #Digest::MD5.hexdigest(password)
	        user
	    else
	        nil
	    end
	end
end
