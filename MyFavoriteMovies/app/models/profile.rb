class Profile < ApplicationRecord
    validates :name, presence: { message: "Campo obrigatório !" } 
end
