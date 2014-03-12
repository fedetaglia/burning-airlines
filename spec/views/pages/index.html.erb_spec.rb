require 'spec_helper'
describe "pages/index.html.erb" do
  it 'has links on the page' do
    have_link(flights_path)
    have_link(reservations_path)
    have_link(airplanes_path)

  end
end
