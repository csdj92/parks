class ParkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :state, :parkCode, :description, :fullName, :url, :latitude, :longitude, :activities, :states, :phoneNumbers, :entranceFees, :directionsInfo, :directionsUrl, :standardHours, :images
end
