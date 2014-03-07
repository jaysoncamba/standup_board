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
    render :json => {model: @todo, success: @todo.errors.empty?}
  end

  def destroy
    @todo.destroy
    respond_with @todo

  end

  def edit
    respond_with @todo
  end

  def update
    # not really recommended but it'll have to make do for now
    valid = @todo.update_attributes(todo_params)
    debugger
    respond_to do |format|
      format.html
      format.json {
        render :json => {
            :success => valid
        }
      }
    end
  end

  def show
    respond_with @todo
  end


  private
  def find_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:ticket, :title, :description, :status, :ticket_url, :pull_request ) if params[:todo]
  end
end