class ScheduleDataController < ApplicationController
  def index
    @schedule_data = ScheduleDatum.all
  end

  def new
    @schedule_datum = ScheduleDatum.new
  end

  def create
    @schedule_datum = ScheduleDatum.new(params.require(:schedule_datum).permit(:title, :start_date, :end_date, :all_day_flg, :memo))
    if @schedule_datum.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :schedule_data
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
