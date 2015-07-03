class ReportsController < ApplicationController
  before_filter :authenticate_user!


  def index
  end

  def labels

    require 'prawn/labels'

    Prawn::Labels.types = {
      "SixteenthSheet" => {
        "paper_size" => "A4",
        "columns"    => 2,
        "rows"       => 8,
        "left_margin" => 21,
        "top_margin" => 53,
        "row_height" => 96,
        "column_gutter" => 51
    }}

    @members = Member.all(:order => 'last_name')

    addresses = Array.new

    @members.each do |member|

      addresses << "#{member.first_name} #{member.last_name}\n#{member.address}\n#{member.post_code}"

    end


    labels = Prawn::Labels.render(addresses, :type => "SixteenthSheet") do |pdf, address|
      pdf.text address
    end

    send_data labels, :filename => "member_labels.pdf", :type => "application/pdf"

  end

  def list
  	@members = Member.all(:order => 'last_name')

    respond_to do |format|
      format.pdf do 
        pdf = ListPdf.new(@members)
        send_data pdf.render, filename: "members_list.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end
end
