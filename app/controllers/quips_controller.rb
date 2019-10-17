class QuipsController < ProtectedController
  before_action :set_quip, only: [:show, :update, :destroy]
  skip_before_action :authenticate
  # GET /quips
  def index
    @quips = Quip.all

    render json: @quips
  end

  # GET /quips/1
  def show
    render json: @quip
  end

  # POST /quips
  def create
    @quip = current_user.quips.build(quip_params)

    if @quip.save
      render json: @quip, status: :created, location: @quip
    else
      render json: @quip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quips/1
  def update
    if @quip.update(quip_params)
      render json: @quip
    else
      render json: @quip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quips/1
  def destroy
    @quip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quip
      @quip = Quip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quip_params
      params.require(:quip).permit(:author, :mood, :user_id, :content)
    end
end
