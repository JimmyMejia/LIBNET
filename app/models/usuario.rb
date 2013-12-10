class Usuario < ActiveRecord::Base
	attr_accessor :password

    # Antes que guardemos el registro encriptamos el password
    before_save :encrypt_password

    def self.authenticate(email, submitted_password)
    	user = find_by_email(email)

    	return nil if user.nil?
    	return user if user.has_password?(submitted_password)
    end

    def has_password?(submitted_password)
    	encrypted_password = encrypt(submitted_password)
    end

    private
        def encrypt_password
        	# Genera un unico salt si es un nuevo usuario
            self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}---#{password}") if self.new_record?
            
            # Encripta la contraseña y la almacena en el campo de la tabla usuarios llamado crypted_password
            self.crypted_password = encrypt(password)

	    end

	    def encrypt(pass)
	    	Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
	    end

	def self.validate_login(email, password)
		user = Usuario.find_by_email(email)

		if user && user.crypted_password == Digest::SHA2.hexdigest(password)
	        user
	    else
	        nil
	    end
	end
end
