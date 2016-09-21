class LoginController < ApplicationController
	layout false
	skip_before_action :check_logined

  def index
		
  end
	
  def auth
		#入力値がユーザー情報に存在するかどうか認証する
		##存在すれば対象のオブジェクト
		##存在しなければnil
		usr = User.authenticate(params[:userid],params[:password])
		if usr then
			reset_session
			session[:usr] = usr.id
			session[:name] = usr.username
			#redirect_to params[:referer]
			redirect_to books_url
		else
			flash.now[:referer] = params[:referer]
			@error = 'ユーザーID/パスワードが間違っています。'
			render 'index'
		end
  end
end
