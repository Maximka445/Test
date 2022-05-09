class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    Book.create(
      name_book: params[:book][:name_book],
      user_id: params[:book][:user_id]
    )
  end

  def update
    @book = Book.find(params[:id])
    @book.update(
      name_book: params[:book][:name_book],
      user_id: params[:book][:user_id]
    )
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  def show
    @book = Book.find(params[:id])
  end

  def index
    @book = Book.all
  end
end
