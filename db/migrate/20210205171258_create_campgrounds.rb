class CreateCampgrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :campgrounds do |t|
      t.string :state
      t.string :parkCode
      t.string :description
      t.string :name
      t.string :url
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :activities
      t.string :states
      t.string :phoneNumbers
      t.string :phoneNumber
      t.string :entranceFees
      t.string :directionsInfo
      t.string :directionsUrl
      t.string :standardHours
      t.string :images

      t.timestamps
    end
  end
end
