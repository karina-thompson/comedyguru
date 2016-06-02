
class Comedian < ActiveRecord::Base
  has_many :tags
  has_many :likes
  has_many :fans, through: :likes, source: 'user'


  def similar_comedians
    Comedian.find_by_sql([SIMILAR_QUERY, {comedian: self.id}]) - [self]
  end

  # def similar_comedians
  #   list = []
  #   fans.each do |fan|
  #     fan.liked_comedians.each do |comedian|
  #       list << comedian unless comedian == self
  #     end
  #   end
  #   counts = list.each_with_object(Hash.new(0)) { |list,counts| counts[list] += 1 }
  #   sorted = counts.sort_by { |_,count| -count }.to_h
  #   sorted.map { |comedian,_| comedian }
  # end

  private

  SIMILAR_QUERY=<<-SQL
    SELECT count(c.id) AS score, c.* FROM likes l 
      JOIN users u ON u.id = l.user_id
      JOIN likes l2 ON u.id = l2.user_id
      JOIN comedians c ON l2.comedian_id = c.id
    WHERE l.comedian_id = :comedian
    GROUP BY c.id
    ORDER BY score DESC;
  SQL


end
