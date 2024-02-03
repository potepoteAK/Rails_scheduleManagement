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
    @schedule_datum = ScheduleDatum.find(params[:id])
  end

  def edit
    @schedule_datum = ScheduleDatum.find(params[:id])
  end

  def update
    @schedule_datum = ScheduleDatum.find(params[:id])
    if @schedule_datum.update(params.require(:schedule_datum).permit(:title, :start_date, :end_date, :all_day_flg, :memo))
      flash[:notice] = "IDが「#{@schedule_datum.id}」の情報を更新しました"
      redirect_to :schedule_data
    else
      render "edit"
    end
  end

  def destroy
    @schedule_datum = ScheduleDatum.find(params[:id])
    @schedule_datum.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :schedule_data
  end
end
