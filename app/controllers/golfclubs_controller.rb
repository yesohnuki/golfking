class GolfclubsController < ApplicationController
  def new
    @golfclub = Golfclub.new
  end

  # 以下を追加
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    golfclub = Golfclub.new(golfclub_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    golfclub.save
    # 4. トップ画面へリダイレクト
    redirect_to golfclubs_path(golfclub.id)
  end

  def index
    @golfclubs = Golfclub.all
  end

  def show
    @golfclub = Golfclub.find(params[:id])
  end

  def edit
    @golfclub = Golfclub.find(params[:id])
  end

  def update
    golfclub = Golfclub.find(params[:id])
    golfclub.update(golfclub_params)
    redirect_to golfclub_path(golfclub.id)
  end

  def destroy
    golfclub = Golfclub.find(params[:id])  # データ（レコード）を1件取得
    golfclub.destroy  # データ（レコード）を削除
    redirect_to '/golfclubs'  # 投稿一覧画面へリダイレクト
  end


  private

  def golfclub_params
    params.require(:golfclub).permit(:title, :body, :image)
  end
end
