class BooksController < ApplicationController
  before_action :authorized

  def index
    books = Book.all

    render json: { books: books }
  end

  def create
    @book = Book.create(book_params)

    if @book.valid?
      render json: { book: @book, message: 'Nota criada com sucesso' }
    else
      render json: @book.errors
    end
  end

  def update
    @book = Book.update(book_params)
    if @book.valid?
      render json: @book
    else
      render json: @book.errors
    end
  end

  private

  def book_params
    params.permit(:name, :description, :user_id)
  end
end
