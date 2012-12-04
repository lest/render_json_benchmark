class User < ActiveRecord::Base
  attr_accessible :name, :twitter

  has_many :posts, foreign_key: :author_id
end
