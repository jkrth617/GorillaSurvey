class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices

  def total_responses
    choice_array = self.choices
    choice_array.inject(0) do |sum, choice|
      sum + choice.times_selected
    end
  end

end
