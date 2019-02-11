class User < ApplicationRecord
    acts_as_token_authenticatable
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

    validates :name, :birthday, presence: { message: "Campo obrigatório !" } 
    validates :email,
        uniqueness: {
            message: ->(object, data) do
                "Olá #{object.name}!, #{data[:value]} já está cadastrado! Tente novamente com um email diferente. #{Time.zone.tomorrow}"
              end
        }
end
