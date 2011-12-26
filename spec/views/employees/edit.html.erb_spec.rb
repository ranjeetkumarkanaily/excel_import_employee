require 'spec_helper'

describe "employees/edit.html.erb" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :ref_no => 1,
      :fname => "MyString",
      :lname => "MyString",
      :age => 1
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_ref_no", :name => "employee[ref_no]"
      assert_select "input#employee_fname", :name => "employee[fname]"
      assert_select "input#employee_lname", :name => "employee[lname]"
      assert_select "input#employee_age", :name => "employee[age]"
    end
  end
end
