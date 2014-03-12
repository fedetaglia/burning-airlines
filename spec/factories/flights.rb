FactoryGirl.define do
    # Define a basic flight.
    factory :flight do
        number 1
        origin "sydney"
        destination "melbourne"
        datetime "2014-03-12 05:01:08"
        airplane_id 2
    end
end
