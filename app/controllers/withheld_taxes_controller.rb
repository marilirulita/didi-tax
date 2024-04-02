class WithheldTaxesController < ApplicationController
  before_action :set_withheld_tax, only: %i[ show edit update destroy ]

  # GET /withheld_taxes or /withheld_taxes.json
  def index
    @withheld_taxes = WithheldTax.all
    @total = WithheldTax.select("sum(income_withheld) as total_income, sum(iva_withheld) as total_iva, sum(isr_withheld) as total_isr")
  end

  # GET /withheld_taxes/1 or /withheld_taxes/1.json
  def show
  end

  # GET /withheld_taxes/new
  def new
    @withheld_tax = WithheldTax.new
  end

  # GET /withheld_taxes/1/edit
  def edit
  end

  # POST /withheld_taxes or /withheld_taxes.json
  def create
    @withheld_tax = WithheldTax.new(withheld_tax_params)

    respond_to do |format|
      if @withheld_tax.save
        format.html { redirect_to withheld_taxes_url, notice: "Withheld tax was successfully created." }
        format.json { render :show, status: :created, location: @withheld_tax }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @withheld_tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /withheld_taxes/1 or /withheld_taxes/1.json
  def update
    respond_to do |format|
      if @withheld_tax.update(withheld_tax_params)
        format.html { redirect_to withheld_taxes_url, notice: "Withheld tax was successfully updated." }
        format.json { render :show, status: :ok, location: @withheld_tax }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @withheld_tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /withheld_taxes/1 or /withheld_taxes/1.json
  def destroy
    @withheld_tax.destroy!

    respond_to do |format|
      format.html { redirect_to withheld_taxes_url, notice: "Withheld tax was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_withheld_tax
      @withheld_tax = WithheldTax.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def withheld_tax_params
      params.require(:withheld_tax).permit(:date, :income_withheld, :iva_withheld, :note, :isr_withheld)
    end
end
