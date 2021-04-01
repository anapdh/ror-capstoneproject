class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)

    if @like.save
      redirect_to root_path, notice: 'You liked an opinion.'
    else
      redirect_to root_path, alert: 'You cannot like this opinion.'
    end
  end

  def destroy
    @like = Like.find(params[:id])
    if @like
      @like.destroy
      redirect_to root_path, notice: 'You disliked an opinion.'
    else
      redirect_to root_path, alert: 'You cannot dislike an opinion that you did not like before.'
    end
  end

  def like_params
    params.require(:like).permit(:opinion_id)
  end
end
