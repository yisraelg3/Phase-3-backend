class Studentgoal < ActiveRecord::Base
    belongs_to :student
    belongs_to :goal
  end