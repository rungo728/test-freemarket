# 〜〜〜〜〜パンくず親〜〜〜〜〜
crumb :root do
  link "メルカリ", root_path
end

# 〜〜〜〜〜パンくず子供エリア〜〜〜〜
# マイページ
crumb :show do
  link "マイページ", users_show_path
  parent :root
end

# プロフィール
crumb :edit do 
  link "プロフィール", users_show_path
  parent :show
end

# 本人情報の登録
crumb :identification do 
  link "本人情報の登録", users_show_path
  parent :show
end

# 支払い方法
crumb :card do 
  link "支払い方法", users_show_path
  parent :show
end

# ログアウト
crumb :logout do 
  link "ログアウト", users_show_path
  parent :show
end

# 商品詳細ページ
crumb :items_name do
  #該当のidの情報を１件だけ取得する
  @item = Item.find(params[:id])
  # @item.name = 商品名
  link @item.name, items_path
end

# 検索結果ページ
crumb :items_search do 
  @q = Item.search(params[:q])
  # 検索した文字だけを表示できるように@qの後ろにname_contをつける
  link @q.name_cont, items_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).