class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  validates :color, inclusion: CAT_COLORS
  validates :sex, inclusion: ('M', 'W')
  validates :birth_date, :color, :name, :sex, presence: true

  CAT_COLORS = ['black', 'white', 'orange', 'brown']

  def age
    time_ago_in_words(birth_date)
  end
end
