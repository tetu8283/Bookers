class BooksController < ApplicationController
 
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
    # データを受けとり登録(newで新しくレコードを作成)
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Create is successfully"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      flash[:notice] = "Create error"
      render :index
    end
  end

  def show
    # Bookの中にあるparamsに通過済みのid番目を格納
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Update is successfully"
      redirect_to book_path(@book.id)  
    else
      flash.now[:notice] = "Update error"
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Destroy is successfully"
    redirect_to '/books'
  end
  
  
  
  private 
 
  def book_params
    # bookから送られてくるtitleとbodyに限定
    params.require(:book).permit(:title, :body)
  end
end
