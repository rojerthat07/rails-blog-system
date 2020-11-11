class Account < ApplicationRecord 

    validates :username, presence:true, length:{minimum:5,maximum:25},uniqueness:{case_sensitive:false}
    validates :firstname, presence:true
    validates :lastname, presence:true
    validates :email, presence:true, length:{minimum:5,maximum:25},uniqueness:{case_sensitive:false}
    validates :password, presence:true
end