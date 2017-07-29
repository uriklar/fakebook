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

	def is_friend user
		all_friends.include? user
	end

	def friendship_with user
		friendships.find { |f| f.friend_id === user.id } ||
		inverse_friendships.find { |f| f.user_id === user.id }
	end
end
