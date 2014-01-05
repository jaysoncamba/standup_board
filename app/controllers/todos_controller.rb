class TodosController < ApplicationController
  layout 'private'
  respond_to :html, :json
  before_filter :find_todo, :only => [:destroy, :edit, :update, :show]

  def index
    # ugly, paginate when needed
    @todos = Todo.all
    respond_with @todos
  end

  def create
    @todo = Todo.create(todo_params)
    respond_with @todo
  end

  def destroy
    @todo.destroy
    respond_with @todo

  end

  def edit
    respond_with @todo
  end

  def update
    respond_with @todo
  end

  def show
    respond_with @todo
  end


  private
  def find_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:ticket, :title, :description, :status)
  end
end