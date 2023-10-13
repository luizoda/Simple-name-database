class User < ApplicationRecord
	validates_presence_of :email
	validates_format_of :email, with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates_presence_of :cpf
	validates_format_of :cpf, with: /\A\d{3}\.\d{3}\.\d{3}\-\d{2}\z/
	validates_presence_of :phone
	validates_format_of :phone, with: /\A\(?[1-9]{2}\)? ?(?:[2-8]|9[0-9])[0-9]{3}\-?[0-9]{4}\z/
end
