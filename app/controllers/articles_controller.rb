class ArticlesController < ApplicationController

    # GET /articles
    def index
        @articles = Article.order(published_at: :desc)
        render json: @articles
    end

    # GET /articles/:id
    def show
        @article = Article.find(params[:id])

        render json: @article
        rescue ActiveRecord::RecordNotFound
            head :not_found

    end
    
    # POST /articles
    def create
        @article = Article.new(article_params)

        if @article.save
            render json: @article, status: :created, location: @article
        else
            render json: @article.errors, status: :unprocessable_entity
        end
    end

    # PUT /articles/:id
    # PATCH /articles/:id
    def update
        method_not_allowed
    end

    # DELETE /articles/:id
    def destroy
        method_not_allowed
    end

    private

    def method_not_allowed
        head :method_not_allowed
    end

    def article_params
        params.permit(:title, :content, :author, :category, :published_at)
    end
end
