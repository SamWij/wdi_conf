class PageController < ApplicationController
  include ApplicationHelper
  def index
    @user_id = session[:user_id]
  end

  def speakers
    @all_speakers = Speaker.all
    @speakers = Speaker.all.to_json
  end

  def payment
  end

  def pdf_tickets
    image = "#{Prawn::DATADIR}/images/barcode.png"
    image = "bar.png"
    pdf = Prawn::Document.new
    pdf.text "WDI11 CONFERENCE TICKETS"
    pdf.text "Customer Name : #{current_user_full_name}"
    pdf.text "Customer Email Address : #{current_user_email}"
    pdf.text "Total Number of Tickets : #{get_tickets_count}"
    pdf.text "#{session[:id]}"
    content = [ ["No","Ticket Number"] ]
    get_tickets_count.times do |n|
      testing_number = SecureRandom.uuid
      content << ["#{n+1}", {:image => image}]
    end
    pdf.table(content)

    send_data pdf.render, :filename => "tickets.pdf", :type => "application/pdf"
  end

end
