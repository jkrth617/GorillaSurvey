class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :responses

  def times_selected
    self.responses.size
  end

  def percentage_selected
    if self.question.total_responses >0
      decimal = (self.times_selected.to_f)/(self.question.total_responses)
      percent = decimal.round(4)*100
      percent.to_s + "%"
    else
      "0%"
    end
  end

end
