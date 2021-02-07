class CampgroundSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :parkCode, :description, :reservationUrl,:reservationInfo,:regulationsOverview,:amenities,:fees,:addresses
end
