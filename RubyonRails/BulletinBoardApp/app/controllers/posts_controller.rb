# こちらはコントローラ作成コマンドにより自動で生成されたコントローラーファイル

# ＜豆知識＞
# PostsController < ApplicationController
# はPostsControllerがApplicationControllerを継承しているという意味
class PostsController < ApplicationController

    # set_postをedit,update,,,の前に実行してくれる
    before_action :set_post, only: [:edit, :update, :destroy]

    # ＜注意＞
    # defの横に定義する名前はvuews/posts/[名前].html.erb/
    # で対応しなくてはならない

    # 例えば、def indexならindex.html.erbとなる

    # indexにアクセスが来た時の動作の設定
    def index  
        # posts
        @posts = Post.all
    end

    # newにアクセスが来た時の動作の設定
    def new
        @post = Post.new
    end

    # 投稿ボタンを押したら作動する
    def create
        # 新しい投稿を作成
        @post = Post.new(post_params)

        # データベースに保存された場合
        if @post.save
            # postディレクトリに移動する
            redirect_to posts_path
        else
             render :new
        end
    end

    # 編集
    def edit
    end

    # 更新
    def update
        if @post.update(post_params)
            # ページをpostに移動
            redirect_to posts_path
        else
            render :edit
        end
    end

    # 削除
    def destroy
        @post.destroy
        redirect_to posts_path
    end


    # privateをつけることで以降の関数と変数をprivateにすることができる。
    # つまり、以降の関数はこのクラス内でしか呼び出すことができない。
    private

    # post_paramsの定義
    def post_params
        # titleとcontentのみを許可
        params.require(:post).permit(:title, :content)
    end

    def set_post
        @post = Post.find(params[:id])
    end
end
