class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  # /lessons/123
  def show
    @lesson = Lesson.find(params[:id])
  end

  def create
    random_lesson_number = rand(Lesson.count)
    random_lesson = Lesson.offset(random_lesson_number).first
    lesson_params = params['lesson'] # { 'content' => 'abc123' }
    new_lesson = Lesson.create!(lesson_params)
    if random_lesson == nil
      redirect_to lesson_path(new_lesson.id)
    else
      redirect_to lesson_path(random_lesson.id)
    end
  end
end
