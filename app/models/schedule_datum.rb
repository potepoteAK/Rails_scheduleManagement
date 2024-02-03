class ScheduleDatum < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_date, presence: true
  validates :end_date, presence: true
  include ActiveModel::Validations
  validates_with EndDateOrderValidator
  validates :memo, length: {maximum: 500}

  def all_day_flg_converter(schedule_datum)
    if schedule_datum.all_day_flg
      return "○"
    else
      return ""
    end
  end
end
