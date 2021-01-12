class DivisionsController < ApplicationController
  before_action :authorized

  def divisions
    divisions =  logged_in_user.divisions

    render json: { divisions: divisions }
  end

  def create_division
    @division = Division.create(division_params)
    if @division.valid?
      render json: { division: @division }
    else
      render json: { error: @division.errors.full_messages } 
    end
  end

  def get_division
    @division = logged_in_user.divisions.find(params[:id])

    render json:  @division
  end

  def update_division
    @division = logged_in_user.divisions.find(params[:id])

    if @division.update_attributes(division_params)
      render json:  { division: @division }
    else
      render json:  { error: @division.errors.full_messages }
    end
  end

  def destroy_division
    @division = logged_in_user.divisions.find(params[:id])

    if @division.destroy
      render json:  { division: @division }
    else
      render json:  { error: @division.errors.full_messages }
    end
  end

  private

  def division_params
    params.permit(:data, :entrada, :dinheiro, :cartao, :capitalDeGiro,
                  :reserva, :salario, :despesas, :user_id)
  end
end
