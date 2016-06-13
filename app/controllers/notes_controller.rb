class NotesController < ApplicationController
  before_action :authenticate_user!, :set_layout

  def create
    @note = current_user.notes.new(note_params)
    if @note.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @note = current_user.notes.new
  end

  def edit
    @note = get_note(params[:id])
  end

  def update
    @note = get_note(params[:id])
    if @note.update(note_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @note = get_note(params[:id])
    @note.destroy
    redirect_to root_path
  end

  private

  def get_note(id)
    current_user.notes.find(id)
  end

  def note_params
    params.require(:note).permit(:note)
  end
end
