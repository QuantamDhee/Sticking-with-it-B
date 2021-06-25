class Api::V1::NotesController < ApplicationController

    before_action :find_note, only: [:show, :edit, :update, :destroy]

    def index 
        notes = Note.all

        render json: notes
    end

    def show
        render json: {name: note.name, description: note.description}
    end

    def create

        note = Note.new(note_params)

        if note.save
            render json: note
        else
            render json: {error: note.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
    end

    def update 
        note = Note.find(params[:id])
        if note.update(params.permit(:name, :description, :user_id, :category_id))
           render json: note
        else
            render json: {error: note.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def find_note
        note = Note.find(params[:id])
    end

    def note_params
        params.permit(:name, :description, :user_id, :category_id)
    end

end
