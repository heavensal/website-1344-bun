class ContactMailer < ApplicationMailer

  def contact_email(contact)
    @contact = contact
    mail(to: "adamlamouri@1344.fr", subject: "Formulaire de contact")
  end
end
