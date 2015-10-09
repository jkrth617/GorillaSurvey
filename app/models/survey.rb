class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  def author
    User.find(self.user_id).user_name
  end

end
