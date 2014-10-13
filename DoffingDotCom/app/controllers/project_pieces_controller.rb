class ProjectPiecesController < ApplicationController
  before_action :set_project_piece, only: [:show, :edit, :update, :destroy]

  # GET /project_pieces
  # GET /project_pieces.json
  def index
    @project_pieces = ProjectPiece.all
  end

  # GET /project_pieces/1
  # GET /project_pieces/1.json
  def show
  end

  # GET /project_pieces/new
  def new
    @project_piece = ProjectPiece.new
  end

  # GET /project_pieces/1/edit
  def edit
  end

  # POST /project_pieces
  # POST /project_pieces.json
  def create
    @project_piece = ProjectPiece.new(project_piece_params)

    respond_to do |format|
      if @project_piece.save
        format.html { redirect_to @project_piece, notice: 'Project piece was successfully created.' }
        format.json { render :show, status: :created, location: @project_piece }
      else
        format.html { render :new }
        format.json { render json: @project_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_pieces/1
  # PATCH/PUT /project_pieces/1.json
  def update
    respond_to do |format|
      if @project_piece.update(project_piece_params)
        format.html { redirect_to @project_piece, notice: 'Project piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_piece }
      else
        format.html { render :edit }
        format.json { render json: @project_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pieces/1
  # DELETE /project_pieces/1.json
  def destroy
    @project_piece.destroy
    respond_to do |format|
      format.html { redirect_to project_pieces_url, notice: 'Project piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_piece
      @project_piece = ProjectPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_piece_params
      params[:project_piece]
    end
end
