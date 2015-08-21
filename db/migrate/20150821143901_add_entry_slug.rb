class AddEntrySlug < ActiveRecord::Migration
  def change
    add_column :entries, :slug, :string
    add_column :entries, :form_body, :text
  end
end
