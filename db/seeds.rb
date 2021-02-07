require 'rest-client'
    
    response = RestClient.get 'https://developer.nps.gov/api/v1/parks?limit=500&api_key=1Zl4Cakd5aqjiuiBFv4uCfiQgotBl5ZlC0Q8v4HC'
    json =JSON.parse(response.body)
    parks = json['data']
    

    parks.each do |park|
                Park.create(state: park['states'],
        parkCode: park['parkCode'],
        description: park['description'], 
        fullName: park['fullName'],
        url: park['url'],
        latitude: park['latitude'],
        longitude: park['longitude'],
        activities: park['activities'],
        phoneNumbers: park['phoneNumbers'],
        entranceFees: park['entranceFees'],
        directionsInfo: park['directionsInfo'],
        directionsUrl: park['directionsUrl'],
        standardHours: park['standardHours'],
        images: park['images'],
        name: park['name'],
        phoneNumber: park['phoneNumber'])
    end


    response = RestClient.get 'https://developer.nps.gov/api/v1/campgrounds?limit=100&api_key=1Zl4Cakd5aqjiuiBFv4uCfiQgotBl5ZlC0Q8v4HC'
    json =JSON.parse(response.body)
    camp = json['data']

    camp.each do |camp|
        Campground.create(state: camp['states'],
parkCode: camp['parkCode'],
description: camp['description'], 
fullName: camp['name'],
url: camp['url'],
latitude: camp['latitude'],
longitude: camp['longitude'],
activities: camp['activities'],
phoneNumbers: camp['phoneNumbers'],
entranceFees: camp['entranceFees'],
directionsInfo: camp['directionsInfo'],
directionsUrl: camp['directionsUrl'],
standardHours: camp['standardHours'],
images: camp['images'],
name: camp['name'],
phoneNumber: camp['phoneNumber'])
end










