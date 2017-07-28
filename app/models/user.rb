class User < ActiveRecord::Base
	has_many :posts
	has_many :friendships
	has_many :friends, through: :friendships
	has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
	has_many :inverse_friends, :through => :inverse_friendships, :source => :user

	def people_you_may_know
		User.all - [self] - friends - inverse_friends
	end

	def all_friends
		friends + inverse_friends
	end
end
