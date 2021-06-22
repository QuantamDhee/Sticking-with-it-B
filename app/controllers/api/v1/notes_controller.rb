class Api::V1::NotesController < ApplicationController

    before_action :find_note, only: [:show, :update, :destroy]

    def index 
        @notes = Note.all

        render json: @notes
    end

    def show
        render json: @note
    end

    def create
        @note = Note.new(note_params)

        if @note.save
            render json: @note
        else
            render json: {error: note.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def find_note
        @note = Note.find(params[:id])
    end

    def note_params
        params.require(:note).permit(:name, :description)
    end
end
