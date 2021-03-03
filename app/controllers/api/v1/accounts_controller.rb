class Api::V1::AccountsController < ApplicationController

    # before_action :find_account #, only: [:update]

def index
	@accounts = Account.all.order(:created_at)
	render json: @accounts, status: 200
end

def create
    @account = Account.create(account_params)
    render json: @account, status: 201
  end

def destroy
    account = Account.find(params[:id])
    if account.destroy
      render json: {accountId: account.id}, status: 200
    end
  end

def update
    @account = Account.find(params[:id])

if @account.update(account_params)
	render json: @account, status: 200

	 @account.update(account_params)
if @account.save
		render json: @account, status: :accepted
else
		render json: { errors: @account.errors.full_messages }, status: :unprocessible_entity
			end
		end
	end

private
    def account_params
      params.require(:account).permit(:type, :name, :duration, :distance)
    end

		def account_params
				params.permit(:title, :content)
		end
		
		def find_account
			@account = Account.find(params[:id])
		end

end
