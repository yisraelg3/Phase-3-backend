class Studentgoal < ActiveRecord::Base
    belongs_to :student
    belongs_to :goal

    def goal_title
      self.goal.title
    end

    def self.addStar(id)
      studentgoal=self.all.find(id)
      studentgoal.update(star: studentgoal.star+1)
      studentgoal
    end
  end