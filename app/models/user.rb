class User < ApplicationRecord

    # Validations
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :name, presence: true, length: {minimum:3, maximum:30}, uniqueness: {case_sensitive: false}
    validates :email, presence: true, length: {maximum:255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

    has_secure_password
    validates :password, presence: true, length: {minimum:6, maximum: 60}
    

end
