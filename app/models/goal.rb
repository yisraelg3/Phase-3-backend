class Goal < ActiveRecord::Base
    belongs_to :teacher
    has_many :studentgoals
    has_many :students, through: :studentgoals
  end