class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :update, :destroy]
    
    # GET /articles
    def index
        @articles = Article.order(published_at: :desc)
        render json: @articles
    end

    # GET /articles/:id
    def show
        render json: @article
    end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :content, :author, :category, :published_at)
    end
end
