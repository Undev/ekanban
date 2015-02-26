class AddKanbanTablesOptions < ActiveRecord::Migration
  def self.up
  	#table "kanbans"
  	change_column :kanbans, :name, :string, :null => false
  	change_column :kanbans, :project_id, :integer, :null => false
  	change_column :kanbans, :tracker_id, :integer, :null => false
  	change_column :kanbans, :is_valid, :boolean, :default => true
  	add_column :kanbans, :description, :text

  	#table "kanban_states"
  	change_column :kanban_states, :name, :string, :null => false
  	change_column :kanban_states, :is_default, :boolean, :default => false
  	change_column :kanban_states, :is_initial, :boolean, :default => false
  	change_column :kanban_states, :is_closed, :boolean, :default => false

  	#table "kanban_panes"
  	change_column :kanban_panes, :name, :string
  	add_column :kanban_panes, :description, :text
  	change_column :kanban_panes, :wip_limit_auto, :boolean, :default => true
  	change_column :kanban_panes, :kanban_id, :integer, :null => false

  	#table  "kanban_workflows"
  	change_column :kanban_workflows, :check_role, :boolean, :default => false
  end
  
  def self.down
  	#table "kanbans"
  	change_column :kanbans, :name, :string, :null => false
  	change_column :kanbans, :project_id, :integer, :null => false
  	change_column :kanbans, :tracker_id, :integer, :null => false
  	change_column :kanbans, :is_valid, :boolean, :default => true
  	remove_column :kanbans, :description

  	#table "kanban_states"
  	change_column :kanban_states, :name, :string, :null => false
  	change_column :kanban_states, :is_default, :boolean, :default => false
  	change_column :kanban_states, :is_initial, :boolean, :default => false
  	change_column :kanban_states, :is_closed, :boolean, :default => false

  	#table "kanban_panes"
  	change_column :kanban_panes, :name, :string
  	remove_column :kanban_panes, :description
  	change_column :kanban_panes, :wip_limit_auto, :boolean, :default => true
  	change_column :kanban_panes, :kanban_id, :integer, :null => false

  	#table  "kanban_workflows"
  	change_column :kanban_workflows, :check_role, :boolean, :default => false
  end
end
