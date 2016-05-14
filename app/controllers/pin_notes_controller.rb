class PinNotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @pin_note = PinNote.new(pin_note_params)
    if @pin_note.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @pin_note = PinNote.new
  end

  def edit
    @pin_note = get_pin_note(params[:id])
  end

  def update
    @pin_note = get_pin_note(params[:id])
    if @pin_note.update(pin_note_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @pin_note = get_pin_note(params[:id])
    @pin_note.destroy
    redirect_to root_path
  end

  private

    def get_pin_note(id)
      PinNote.find(id)
    end

    def pin_note_params
      params.require(:pin_note).permit(:note)
    end

end
