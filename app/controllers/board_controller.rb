class BoardController < ApplicationController
  def index
    #포스팅 목록 보여주기
    @post_all = Post.all
  end
 
  def show
    #제목 클릭하면 포스팅 보여주기
    post_id = params[:id]
    @post = Post.find(post_id)
    
  end

  def new
    #새로운 포스팅 작성하기
    
  end

  def create
    #포스팅 저장하기
    
    # Parameters: {"title"=>"ss", "editor"=>"ss", "content"=>"sss"}
    
    new_post = Post.new
    new_post.title = params[:title]
    new_post.editor = params[:editor]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to "/"
  end

  def edit
    #수정하여 저장하기
    post_id=params[:id]
    @post = Post.find(post_id)
  end

  def update
    #변경된 내용 DB저장
    edit_post = Post.find(params[:id])
    edit_post.title = params[:title]
    edit_post.editor = params[:editor]
    edit_post.content = params[:content]
    edit_post.save
    
    redirect_to "/"
    
  end

  def delete
    #포스팅 삭제하기
    post_id= params[:id]
    delete_post = Post.find(post_id)
    delete_post.destroy
    
    redirect_to "/"
  end
end
