class EndDateOrderValidator < ActiveModel::Validator
  def validate(record)
    start_date = record.start_date
    end_date = record.end_date
    return if start_date.present? && end_date.present? && end_date >= start_date

    record.errors.add :end_date, "は、開始日以降の日付としてください。"
  end
end