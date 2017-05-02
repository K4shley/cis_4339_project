class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :activity
  belongs_to :timeslot
  belongs_to :shift

  validates :customer_name, presence:true
  validates :customer_name, length: { maximum: 100 }
  validates :date, presence:true
  validates :activity_id, presence:true
  validates :employee_id, presence:true
  validate  :date_cannot_be_in_the_past


  validates_uniqueness_of :timeslot_id, scope: [:employee_id, :date], :message => "already taken by another customer."
  validates_uniqueness_of :timeslot_id, scope: [:customer_name, :date], :message => "already taken by same customer."

  scope :in_date_range,lambda {|start_date, end_date| where("date >= ? AND date <= ?", start_date,end_date)}
  scope :find_by_employee_id,lambda {|employee_id| where("employee_id = ? ", employee_id)}




  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end



end
