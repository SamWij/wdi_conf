class CreateSpeakers < ActiveRecord::Migration[5.0]
  def change
    create_table :speakers do |t|
      t.string :name
      t.text :bio
      t.string :linkedin
      t.string :image_url
      t.string :talk_title
      t.string :twitter
      t.string :talk_location
      t.text :talk_description
      t.string :job_title

      t.timestamps
    end
  end
end
