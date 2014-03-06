class AddPtTicketUrlAndGithubPrToTodo < ActiveRecord::Migration
  def change
  	add_column :todos, :pivotal_tracker_ticket_url, :string
  	add_column :todos, :github_pull_request_url, :string
  end
end
