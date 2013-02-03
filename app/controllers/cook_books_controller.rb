class CookBooksController < ApplicationController
  # GET /cook_books
  # GET /cook_books.json
  def index
    @cook_books = CookBook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cook_books }
    end
  end

  # GET /cook_books/1
  # GET /cook_books/1.json
  def show
    @cook_book = CookBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cook_book }
    end
  end

  # GET /cook_books/new
  # GET /cook_books/new.json
  def new
    @cook_book = CookBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cook_book }
    end
  end

  # GET /cook_books/1/edit
  def edit
    @cook_book = CookBook.find(params[:id])
  end

  # POST /cook_books
  # POST /cook_books.json
  def create
    @cook_book = CookBook.new(params[:cook_book])

    respond_to do |format|
      if @cook_book.save
        format.html { redirect_to @cook_book, notice: 'Cook book was successfully created.' }
        format.json { render json: @cook_book, status: :created, location: @cook_book }
      else
        format.html { render action: "new" }
        format.json { render json: @cook_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cook_books/1
  # PUT /cook_books/1.json
  def update
    @cook_book = CookBook.find(params[:id])

    respond_to do |format|
      if @cook_book.update_attributes(params[:cook_book])
        format.html { redirect_to @cook_book, notice: 'Cook book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cook_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cook_books/1
  # DELETE /cook_books/1.json
  def destroy
    @cook_book = CookBook.find(params[:id])
    @cook_book.destroy

    respond_to do |format|
      format.html { redirect_to cook_books_url }
      format.json { head :no_content }
    end
  end
end
