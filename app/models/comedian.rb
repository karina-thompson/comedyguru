
class Comedian < ActiveRecord::Base
  has_many :tags
  has_many :likes
  has_many :fans, through: :likes, source: 'user'


  def similar_comedians
  

  end
end
