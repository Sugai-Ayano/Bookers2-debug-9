	class Book < ApplicationRecord
	belongs_to :user
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}

		def self.search_for(content,method)
			if method == 'perfet'
				Book.where(title: content)
			elsif method == 'foword'
				Book.where('title Like ?', content + '%')
			elsif method == 'backword'
				Book.method('title Like ?', '%' + content)
			else
				Book.where('title Like ?', '%' + content + '%')
			end
		end
	end
