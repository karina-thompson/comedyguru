
class Comedian < ActiveRecord::Base
  has_many :tags
  has_many :likes
  has_many :fans, through: :likes, source: 'user'


  def similar_comedians
    similar = Comedian.find_by_sql([SIMILAR_QUERY, {comedian: self.id}])
    similar.each {|comedian| comedian.reload}
    similar - [self]
  end

  SIMILAR_QUERY=<<-SQL
    SELECT count(c.id) AS score, c.id FROM likes l 
      JOIN users u ON u.id = l.user_id
      JOIN likes l2 ON u.id = l2.user_id
      JOIN comedians c ON l2.comedian_id = c.id
    WHERE l.comedian_id = :comedian
    GROUP BY c.id
    ORDER BY score DESC;
  SQL

end
