# frozen_string_literal: true

class QuestionsController < ProtectedController
  before_action :set_question, only: %i[show update destroy]

  # GET /questions
  def index

    @questions = current_user.questions

    render json: @questions
  end

  # GET /questions/1
  def show
    render json: @question
  end

  # POST /questions
  def create
    @question = current_user.questions.build(question_params)

    if @question.save
      render json: @question, status: :created, location: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = current_user.questions.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def question_params
    params.require(:question).permit(:phrase, :user)
  end
end
