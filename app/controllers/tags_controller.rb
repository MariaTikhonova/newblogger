class TagsController < ApplicationController
	
	def index
	@tags = Tag.all
	end

	def show
	 @tag = Tag.find(params[:id])
	end
    
    def new
    @tag = Tag.new
    end

    def create
    @tag = Tag.new
    @tag.save
    redirect_to article_path(@tag)
    end 

    def destroy 
    	@tag = Tag.find(params[:id])
    	@tag.destroy
    	flash.notice = "Tag '#{@tag.name}' Deleted!"
    redirect_to articles_path(@tag)
    end

end
