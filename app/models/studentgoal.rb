class Studentgoal < ActiveRecord::Base
    belongs_to :student
    belongs_to :goal

    def goal_title
      self.goal.title
    end
  end