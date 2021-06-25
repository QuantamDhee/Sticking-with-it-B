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

<<<<<<< HEAD
        # category = Category.find_or_create_by(name: params[:category])
        # note = @note = Note.new(name: params[:name], description: params[:description], category: category)
        note = Note.new(note_params)
        if note.save
            render json: note, status: :created
=======
        note = Note.new(note_params)

        if note.save
            render json: note
>>>>>>> d3bace5038c8f9020110c08bd99f3711a4def642
        else
            render json: {error: note.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        
    end

    def update 
<<<<<<< HEAD
        if note.update(params.require(:note).permit(:name, :description))
=======
        note = Note.find(params[:id])
        if note.update(params.permit(:name, :description, :user_id, :category_id))
>>>>>>> d3bace5038c8f9020110c08bd99f3711a4def642
           render json: note
        else
            render json: {error: note.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def find_note
<<<<<<< HEAD
        note = Note.find_by(id: params[:id])
    end

    def note_params
        # category = Category.find_or_create_by(name: params[:category])
        # permitted = params.permit(:name, :description)
        # permitted["category_id"] = category.id
        # permitted
        params.require(:note).permit(:name, :description, :user_id, :category_id)

=======
        note = Note.find(params[:id])
    end

    def note_params
        params.permit(:name, :description, :user_id, :category_id)
>>>>>>> d3bace5038c8f9020110c08bd99f3711a4def642
    end

end
