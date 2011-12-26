require 'spec_helper'

describe "employees/show.html.erb" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :ref_no => 1,
      :fname => "Fname",
      :lname => "Lname",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
