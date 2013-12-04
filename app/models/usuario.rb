class Usuario < ActiveRecord::Base
    authenticates_with_sorcery!
    validates_confirmation_of :crypted_password, message: 'Ambos campos deben coincidir', if: :password

end
