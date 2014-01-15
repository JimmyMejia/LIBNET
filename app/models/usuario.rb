class Usuario < ActiveRecord::Base
	attr_accessor :password

    # Validamos en una expresion regular nuestro email
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :username, presence: { message: "es requerido." },
                         length: { maximum: 20, too_long: "debe contener %{count} caracteres maximo." },
                         uniqueness: { message: "ya esta registrado." }

    validates :nombre, presence: { message: "es requerido." },
                       length: { maximum: 80, too_long: "debe contener %{count} caracteres maximo." },
                       uniqueness: { message: "ya esta registrado." }

    validates :identificacion, length: { maximum: 30, too_long: "debe contener %{count} caracteres maximo." }

    #validates :direccion, length: { maximum: 255, too_long: "debe contener %{count} caracteres máximo." }

    validates :telefono, numericality: { only_integer: true, message: "no es un numero." },
                         length: { maximum: 8, too_long: "debe contener %{count} caracteres maximo." }

    validates :celular, numericality: { only_integer: true, message: "no es un numero." },
                         length: { maximum: 8, too_long: "debe contener %{count} caracteres maximo." }


    validates :email, format: { :with => VALID_EMAIL_REGEX , message: "el formato del email es invalido" },
                      length: { maximum: 40, too_long: "debe contener %{count} caracteres maximo." }

    validates :crypted_password, presence: { message: "es requerida." },
                                 length: { in: 8..12, message: "debe tener entre 8 y 12 caracteres." }

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
