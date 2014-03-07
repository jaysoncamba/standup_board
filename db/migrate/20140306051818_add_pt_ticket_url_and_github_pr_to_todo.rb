class AddPtTicketUrlAndGithubPrToTodo < ActiveRecord::Migration
  def change
  	add_column :todos, :ticket_url, :string
  	add_column :todos, :pull_request, :string
  end

end
