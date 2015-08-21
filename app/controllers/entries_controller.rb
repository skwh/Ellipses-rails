class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def home
    @entries = Entry.limit(5)
    respond_with(@entries)
  end

  def index
    @entries = Entry.all
    respond_with(@entries)
  end

  def show
    respond_with(@entry)
  end

  def new
    @entry = Entry.new
    respond_with(@entry)
  end

  def edit
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
    respond_with(@entry)
  end

  def update
    @entry.update(entry_params)
    respond_with(@entry)
  end

  def destroy
    @entry.destroy
    respond_with(@entry)
  end

  private
    def set_entry
      @entry = Entry.find_by_param(params[:id])
    end

    def entry_params
      params.require(:entry).permit(:title, :author, :body)
    end
end
