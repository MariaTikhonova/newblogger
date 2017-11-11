module TagsHelper
		def tag_params
	params.require(:article).permit(:title)
    end
end
