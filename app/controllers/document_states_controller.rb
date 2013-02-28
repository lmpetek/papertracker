class DocumentStatesController < ApplicationController
  # GET /document_states
  # GET /document_states.json
  def index
    @document_states = DocumentState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @document_states }
    end
  end

  # GET /document_states/1
  # GET /document_states/1.json
  def show
    @document_state = DocumentState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document_state }
    end
  end

  # GET /document_states/new
  # GET /document_states/new.json
  def new
    @document_state = DocumentState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document_state }
    end
  end

  # GET /document_states/1/edit
  def edit
    @document_state = DocumentState.find(params[:id])
  end

  # POST /document_states
  # POST /document_states.json
  def create
    @document_state = DocumentState.new(params[:document_state])

    respond_to do |format|
      if @document_state.save
        format.html { redirect_to @document_state, notice: 'Document state was successfully created.' }
        format.json { render json: @document_state, status: :created, location: @document_state }
      else
        format.html { render action: "new" }
        format.json { render json: @document_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /document_states/1
  # PUT /document_states/1.json
  def update
    @document_state = DocumentState.find(params[:id])

    respond_to do |format|
      if @document_state.update_attributes(params[:document_state])
        format.html { redirect_to @document_state, notice: 'Document state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @document_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_states/1
  # DELETE /document_states/1.json
  def destroy
    @document_state = DocumentState.find(params[:id])
    @document_state.destroy

    respond_to do |format|
      format.html { redirect_to document_states_url }
      format.json { head :no_content }
    end
  end
end
