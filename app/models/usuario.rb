class Usuario < ActiveRecord::Base
    authenticates_with_sorcery!
    validates_confirmation_of :crypted_password, message: "Ambos campos deben ser similares", if: :password

end
