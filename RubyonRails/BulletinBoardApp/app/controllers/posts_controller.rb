# こちらはコントローラ作成コマンドにより自動で生成されたコントローラーファイル

# ＜豆知識＞
# PostsController < ApplicationController
# はPostsControllerがApplicationControllerを継承しているという意味
class PostsController < ApplicationController

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
        @posts = Post.new
    end
end
