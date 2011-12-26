class Employee < ActiveRecord::Base
  validates_presence_of :ref_no, :fname, :lname
  validates :ref_no,   :presence   => true,
                    :uniqueness => { :case_sensitive => false }
end
