class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end

  get "/teachers" do
    Teacher.first.to_json(include: [{students: {include: {studentgoals: {methods: [:goal_title]}}}}, :goals]) 
  end

  post '/students' do
    new_student = Student.create(name: params[:name], grade: params[:grade], hair_color: params[:hair_color],
       siblings_amount: params[:siblings_amount], teacher_id: params[:teacher_id])
       
    new_student.to_json({include: {studentgoals: {methods: [:goal_title]}}})
  end

  post '/goals' do
    new_goal = Goal.create(title: params[:title], description: params[:description], teacher_id: params[:teacher_id])

    new_goal.to_json
  end

  post '/studentgoals' do
    new_sudent_goal = Studentgoal.create(student_id: params[:student_id], goal_id: params[:goal_id], 
      star: params[:star], completed: params[:completed])

    new_sudent_goal.to_json
  end

  patch '/addstar' do
    # binding.pry
    new_star = Studentgoal.addStar(params[:id])
    new_star.to_json
  end

  delete "/studentgoals/:id" do 
    # binding.pry
    student_goal = Studentgoal.find(params[:id])
    student_goal.destroy

    student_goal.to_json
  end
end
