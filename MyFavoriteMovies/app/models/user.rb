class User < ApplicationRecord
    validates :name, :email, :password, :birthday, presence: { message: "Campo obrigatório !" } 
    validates :email, 
        uniqueness: {
            message: ->(object, data) do
                "Olá #{object.name}!, #{data[:value]} já está cadastrado! Tente novamente com um email diferente. #{Time.zone.tomorrow}"
              end
        }
end
