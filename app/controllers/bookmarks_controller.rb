class BookmarksController < ApplicationController

  def index
    @books = current_user.books
  end



  def create
    @bookmark = current_user.bookmarks.new(bookmark_params)
    if !@bookmark.save
      flash[:notice] = @bookmark.errors.full_messages.to_sentence
    end
    redirect_to root_path
  end

  def destroy
    @bookmark = current_user.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to root_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:book_id)
  end
end
