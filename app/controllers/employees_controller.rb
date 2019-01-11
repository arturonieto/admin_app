class EmployeesController < ApplicationController
before_action :require_user
before_action :verify_role, except: [:view]

  def view
  end

  def show
      @user = User.find(params[:id])
      @employee = @user.employee
      @records = @employee.records
  end


  def mark_checkin
    employee = Employee.find(params[:id])
    if Record.where('employee_id = ? and check_in >= ? and check_in < ?', employee.id, Date.current.beginning_of_day, Date.current.beginning_of_day + 1.day).any?
      flash[:check_in] = 'Ya has registrado esta entrada'
      redirect_to '/'
    else
      record = Record.new(employee_id: employee.id, check_in: Time.now)
      if record.save!
        flash[:check_in] = 'Entrada registrada correctamente'
        redirect_to '/'
      else
        flash[:check_in] = 'No se ha podido registrar la entrada'
        redirect_to '/'
      end
    end
  end


  def mark_checkout
    employee = Employee.find(params[:id])
    if Record.where('employee_id = ? and check_in >= ? and check_in < ?', employee.id, Date.current.beginning_of_day, Date.current.beginning_of_day + 1.day).any?
      if Record.where('employee_id = ? and check_out >= ? and check_out < ?', employee.id, Date.current.beginning_of_day, Date.current.beginning_of_day + 1.day).any?
        flash[:check_out] = 'Ya has registrado esta salida'
        redirect_to '/'
      else
        record = Record.where('employee_id = ? and check_in >= ? and check_in < ?', employee.id, Date.current.beginning_of_day, Date.current.beginning_of_day + 1.day)
        if record.update(check_out: Time.now)
          flash[:check_out] = 'Salida registrada correctamente'
          redirect_to '/'
        else
          flash[:check_out] = 'No se ha podido registrar la salida'
          redirect_to '/'
        end
      end
    else
      flash[:check_out] = 'Aún no se ha registrado la entrada el día de hoy'
      redirect_to '/'
    end
  end


end
