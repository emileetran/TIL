class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  # /lessons/123
  def show
    @lesson = Lesson.find(params[:id])
  end

  def create
    lesson_params = params['lesson'] # { 'content' => 'abc123' }
    Lesson.create!(lesson_params)

    random_lesson_number = rand(Lesson.count)
    random_lesson = Lesson.offset(random_lesson_number).first

    redirect_to lesson_path(random_lesson.id)
  end
end
