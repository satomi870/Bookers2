class UsersController < ApplicationController

   def create
    @book=Book.new(book_params)
    @book.user_id=current_user.id
    @book.save
     redirect_to book_path(@book.id)
   end

  def show
    @user=User.find(params[:id])
    @books=@user.books
    @book=Book.new

  end

  def edit
  end

    private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end



