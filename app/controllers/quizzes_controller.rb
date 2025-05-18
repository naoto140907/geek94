class QuizzesController < ApplicationController
  def start
    country = params[:country]
    quizzes = Quiz.where(country: country).shuffle

    session[:quiz_ids] = quizzes.first(5).map(&:id)
    session[:current_index] = 0
    session[:score] = 0

    redirect_to quiz_path(index: 0)
  end

  def show
    quiz_ids = session[:quiz_ids] || []
    index = params[:index].to_i

    if index >= quiz_ids.length
      redirect_to quizzes_result_path and return
    end

    @quiz = Quiz.find(quiz_ids[index])
    @index = index
  end

  def answer
    selected_option = params[:selected_option].to_i
    index = params[:index].to_i
    quiz = Quiz.find(session[:quiz_ids][index])

    if selected_option == quiz.correct_option
      session[:score] += 1
      current_user.increment!(:points, 1)  # ← ここを追加！！
    end
  
    session[:current_index] = index + 1

    if session[:current_index] >= session[:quiz_ids].length
      redirect_to quizzes_result_path
    else
      redirect_to quiz_path(index: session[:current_index])
    end
  end

  def result
    @score = session[:score]
    @total = session[:quiz_ids]&.length || 0

    # セッションをクリア
    session[:quiz_ids] = nil
    session[:current_index] = nil
    session[:score] = nil
  end
end
