class TasksController < ApplicationController
    before_action :set_board
  
    def index
      @tasks = @board.tasks
    end
  
    def new
      @task = @board.tasks.build
    end
  
    def create
      @task = @board.tasks.build(task_params)
      @task.user = current_user
      if @task.save
        redirect_to board_tasks_path(@board), notice: "タスクを作成しました"
      else
        flash.now[:error] = '作成できませんでした'
        render :new
      end
    end
  
    private
  
    def set_board
      @board = Board.find(params[:board_id])
    end
  
    def task_params
      params.require(:task).permit(:title, :content, :deadline, :eyecatch)
    end
  end
  