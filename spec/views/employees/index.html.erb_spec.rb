require 'spec_helper'

describe "employees/index.html.erb" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :ref_no => 1,
        :fname => "Fname",
        :lname => "Lname",
        :age => 1
      ),
      stub_model(Employee,
        :ref_no => 1,
        :fname => "Fname",
        :lname => "Lname",
        :age => 1
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
