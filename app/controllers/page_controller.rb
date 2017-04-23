class PageController < ApplicationController
  def index
  end


  def speakers
    @all_speakers = Speaker.all
    @speakers = Speaker.all.to_json
  end

  def payment
  end

  def pdf_tickets
    pdf = Prawn::Document.new
    pdf.text "WDI11 CONFERENCE TICKETS"
    names = ["Sam","Soul","Mark","Gerrard"]
    email = ["sam@mail.com","sw@mail.com","mp@mail.com","gh@mail.com"]
    content = [ ["No","Ticket Number" , "Customer Name", "Email", ] ]
    3.times do |n|
      testing_number = SecureRandom.uuid
      content << ["#{n+1}","#{testing_number}", "#{names[n]}", "#{email[n]}"]
    end
    pdf.table(content)
    send_data pdf.render, :filename => "tickets.pdf", :type => "application/pdf"
  end

end
