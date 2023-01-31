class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :price, :publish_date))
    if @book.save
      flash[:notice] = "Book was successfully created"
      redirect_to books_path()
    else
      render('new')
   end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title, :author, :price, :publish_date))
      flash[:notice] = "Book was successfully updated"
      redirect_to book_path(@book)
    else
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book was successfully deleted"
    redirect_to books_path
  end

end
