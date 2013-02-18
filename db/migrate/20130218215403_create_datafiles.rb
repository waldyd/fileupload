class CreateDatafiles < ActiveRecord::Migration
  def change
    create_table :datafiles do |t|

      t.timestamps
    end
  end
  def self.up
        create_table :file_repo do |t|
            t.column :filename, :string
            t.column :timestamp, :datetime
            t.column :data, :binary
        end
  end

  def self.down
        drop_table :attachments
  end
end

=begin
class AddTimestamps < ActiveRecord::Migration
    def change_table
      add_column(:datafiles, :created_at, :datetime)
      #add_column(:users, :updated_at, :datetime)
    end
end
=end
