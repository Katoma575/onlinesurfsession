class MoviesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @movies= Movie.all.order(id: :DESC)
    end
        
    def show
        @movie = Movie.find(params[:id])
    end
    
    def new
        @movie = Movie.new
    end
    
    def create
        @movie =Movie.new(movie_params)
        @movie.user_id =current_user.id 
        if @movie.save
           redirect_to movies_path(@movie), notice: '投稿に成功しました。'
        else 
            render :new
        end
    end
    
    def edit
        @movie = Movie.find(params[:id])
        if @movie.user!=current_user
            redirect_to movies_path, alert: '不正なアクセスです。'    
        end
    end
    
    def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to movie_path(@movie), notice: "更新に成功しました。"
        else
            render :edit
        end
    end
    
    def destroy
        movie = Movie.find(params[:id])
        movie.destroy
        redirect_to movies_path
    end
    
    private
    
    def movie_params
        params.require(:movie).permit(:name, :datetime, :place, :video_id, :self_comment)
    end
end