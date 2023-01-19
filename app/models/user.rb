class User < ApplicationRecord
    has_secure_password
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


    validates :email, 
    presence: { message: "Please enter your email"},
    uniqueness: { message: "This email already exists" },
    format: { with: VALID_EMAIL_REGEX, message: "Invalid email format" }
end