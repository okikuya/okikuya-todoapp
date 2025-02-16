class BoardsController < ApplicationController
    before_action :authenticate_user!

    def new
        @board = current_user.boards.build
    end

    def create
        @board = current_user.boards.build(board_params)
        if @board.save
            redirect_to root_path, notice: 'ボードを作成しました。'
        else
            flash.now[:error] = '作成できませんでした'
            render :new
        end
    end

    private

    def board_params
        params.require(:board).permit(:name, :description)
    end
end