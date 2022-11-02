class Api::V1::AccountsController < ApplicationController
    include ActionController::Serialization
    #get /api/v1/products/
    def update
        if params[:toUpdate] == "true" or params[:toUpdate] == true
            @account = Account.where("accountid = '#{params[:accountId]}'").first
            new_account_data = 
                {
                    "dni" => params[:accountData].first["dni"],
                    "nombres" => params[:accountData].first["nombres"],
                    "apellido_paterno" => params[:accountData].first["apellido_paterno"],
                    "apellido_materno" => params[:accountData].first["apellido_materno"],
                    "birthdate" => params[:accountData].first["birthdate"]
                }
            if !@account.nil? and @account.update(new_account_data)
                render json: {Error: "OK", message: "datos actualizados correctamente", account_data: [@account.as_json(:except => [:id, :created_at, :updated_at])]}
            elsif @account.nil?
                render json: {Error: "400", messageError: "complete los campos correctamente"}
            end
            
        elsif params[:toUpdate] == "false" or params[:toUpdate] == false
            render json: {message: "El registro no necesita actualizarse"}
        else
            render json: {Error: "400", messageError: "complete los campos correctamente"}
        end 
    end

    def show
        @account = Account.where("accountid = '#{params[:accountId]}'").first
        if !@account.nil?
            render json: {Error: "OK", message: "datos encontrados correctamente", account_data: [@account.as_json(:except => [:id, :created_at, :updated_at])]}
        else
            render json: {Error: "400", messageError: "datos no encontrados"}
        end
    end

    def show_all
        @accounts = Account.all
        render json: {accounts: @accounts.as_json(:except => [:id, :created_at, :updated_at])}
    end
end