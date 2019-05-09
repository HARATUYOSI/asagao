class LessonController < ApplicationController
  def step1
    render plain: "HELLO, #{params[:name]}"
  end

  def step2
    render plain: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: 'step4'
  end

  def step4
    render plain: 'step4 now'
  end

  def step5
    flash[:notice] = 'move step6'
    redirect_to action: 'step6'
  end

  def step6
    render plain: flash[:notice]
  end

  def step7
    @price = (2000 * 1.08).floor
  end

  def step9
    @comment = "<script>alert('aaaaa')</script>helllo"
  end
  def step14
    @message = "ごきげんいかが？\nRailsの勉強をがんばりましょう。"
  end
end
