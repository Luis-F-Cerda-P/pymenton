class NotificationsController < ApplicationController
  http_basic_authenticate_with name: Rails.application.credentials.admin_user[:username], password: Rails.application.credentials.admin_user[:password], except: [:index, :show, :create]
  before_action :check_ip_whitelist, only: [:create], if: :production_environment?
  before_action :set_notification, only: %i[ show edit update destroy ]

  # GET /notifications or /notifications.json
  def index
    @notifications = Notification.all.order(id: :desc)
  end

  # GET /notifications/1 or /notifications/1.json
  def show
  end

  # GET /notifications/new
  def new
    @notification = Notification.new
  end

  # GET /notifications/1/edit
  def edit
  end

  # POST /notifications or /notifications.json
  def create
    @notification = Notification.new(notification_params)

    p request.env['HTTP_FLY_CLIENT_IP']

    respond_to do |format|
      if @notification.save
        format.html { redirect_to notification_url(@notification), notice: "Notification was successfully created." }
        format.json { render :show, status: :ok, location: @notification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notifications/1 or /notifications/1.json
  def update
    respond_to do |format|
      if @notification.update(notification_params)
        format.html { redirect_to notification_url(@notification), notice: "Notification was successfully updated." }
        format.json { render :show, status: :ok, location: @notification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifications/1 or /notifications/1.json
  def destroy
    @notification.destroy!

    respond_to do |format|
      format.html { redirect_to notifications_url, notice: "Notification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def check_ip_whitelist
    allowed_ips = 
        [
          '54.88.218.97',
          '18.215.140.160',
          '18.213.114.129',
          '18.206.34.84',
          '172.19.132.217',
          '181.42.140.193',
          '66.241.125.241'
        ]
    unless allowed_ips.include?(request.env['HTTP_FLY_CLIENT_IP'])
      render plain: 'Forbidden', status: :forbidden
    end
  end

  def production_environment?
    Rails.env.production?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notification_params
      params.require(:notification).permit(:resource, :_id, :user_id, :topic, :attempts, :sent, :received)
    end
end
