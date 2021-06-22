Create migration: Teachers table
Create migration: Students table
Create migration: Studentgoals table
Create migration: Goals table

Models:
Teacher Model
has_many :students
has_many :goals

Student Model
belongs_to :teacher
has_many :studentgoals
has_many :goals, through: :studentgoals

StudentGoal Model
belongs_to :student
belongs_to :goal

Goal Model
belongs_to :teacher
has_many :studentgoals
has_many :students, through: :studentgoals
