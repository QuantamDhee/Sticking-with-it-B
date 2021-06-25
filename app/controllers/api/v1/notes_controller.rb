class Api::V1::NotesController < ApplicationController

    before_action :find_note, only: [:show, :edit, :update, :destroy]

    def index 
        notes = Note.all

        render json: notes, only: [:id, :name, :description]
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: {id: note.id, name: note.name, description: note.description } 
    end

    def create

        # category = Category.find_or_create_by(name: params[:category])
        # note = @note = Note.new(name: params[:name], description: params[:description], category: category)
        note = Note.new(note_params)
        if note.save
            render json: note, status: :created
        else
            render json: {error: note.errors.full_messages}, status: :not_acceptable
        end
    end

    def edit

    end
    def destroy
        
    end

    def update 
        if note.update(params.require(:note).permit(:name, :description))
           render json: note
        else
            render json: {error: note.errors.full_messages}, status: :not_acceptable
        end
    end


    private

    def find_note
        note = Note.find_by(id: params[:id])
    end

    def note_params
        # category = Category.find_or_create_by(name: params[:category])
        # permitted = params.permit(:name, :description)
        # permitted["category_id"] = category.id
        # permitted
        params.require(:note).permit(:name, :description, :user_id, :category_id)

    end

end
