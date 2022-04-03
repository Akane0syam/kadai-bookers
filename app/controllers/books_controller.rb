class BooksController < ApplicationController
  def top
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id), notice: "Book was successfully created."
    else
      @books = Book.all
      render :new
    end
  end

  def index
    @books = Book.all

  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id), notice: "Book was successfully updated."
  end

  def destroy
    book = Book.find(params[:id])# データ（レコード）を1件取得
    book.destroy # データ（レコード）を削除
    redirect_to '/books', notice: "Book was successfully destroyed."# 投稿一覧画面へリダイレクト
  end

  private

  def book_params
    params.permit(:title, :body)
  end
end
