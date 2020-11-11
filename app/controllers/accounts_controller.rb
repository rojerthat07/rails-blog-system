class AccountsController < ApplicationController

    def show
        @account = Account.find(params[:id])
    end

    def new
        @account = Account.new
    end

    def create

        @account = Account.new(params.require(:account).permit(:username,:firstname,:lastname,:email,:password))

        if @account.save
            redirect_to account_path(@account.id)
        else
            render 'new'
        end

    end

end