class CreateRecordStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :record_statuses do |t|
      t.string :code
      t.string :description
      t.text :about

      t.timestamps
    end
  end
end
