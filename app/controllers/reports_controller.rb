class ReportsController < ApplicationController


  def index
  end

  def labels
  	@members = Member.all(:order => 'last_name')

    respond_to do |format|
      format.pdf do 
        pdf = LabelsPdf.new(@members)
        send_data pdf.render, filename: "member_labels.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
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
