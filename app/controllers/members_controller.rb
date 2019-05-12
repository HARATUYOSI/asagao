class MembersController < ApplicationController
  def index
    @members = Member.order("number")
  end

  def search
    @members = Member.search(params[:q])
    render "index"
  end

  def new
    @member = Member.new(birthday: Date.new(1997,3,23))
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to @member, notice: "会員登録しました。"
    else
      render 'new'
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.assign_attributes(params[:member])
    if @member.save
      redirect_to @members, notice: "会員情報を更新しました."
    else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to :members, notice: "会員を削除しました。"
  end

  def show
    @member = Member.find(params[:id])
  end
end