class ExcelsController < ApplicationController
  def upload

  end

  def upload_parse_validate
    test_file = params[:excel_file]
    file = FileUploader.new
    file.store!(test_file)
    book = Spreadsheet.open "#{file.store_path}"
    sheet1 = book.worksheet 0
    @employee = []
    @errors = Hash.new
    @counter = 0
    sheet1.each 1 do |row|
      @counter+=1
      e = Employee.new
      puts row[1]
      e.ref_no = row[0]
      e.fname = row[1]
      e.lname = row[2]
      e.age = row[3]
      if e.valid?
        @employee << e
      else
        @errors["#{@counter+1}"] = e.errors
      end
    end
    file.remove!
  end

  def save
    params[:employees].each do |employee|
      Employee.create(employee)
    end
    redirect_to employees_path
  end
end
