class AlunosController < ApplicationController

  before_action :set_aluno, only: %i[ show edit update destroy]

  def index
    @alunos = Aluno.all
  end

  def show
  end

  def new
    @aluno = Aluno.new
  end

  def create
    @aluno = Aluno.new(aluno_params)
    if @aluno.save
      redirect_to @aluno
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @aluno.update(aluno_params)
      redirect_to @aluno
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @aluno.destroy
    redirect_to alunos_path
  end

  private
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end
    def aluno_params
      params.expect(aluno: [ :nome_usuario, :biography, :featured_image ])
    end
end
