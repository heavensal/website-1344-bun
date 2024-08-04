class ContactsController < ApplicationController
  def create
    if ContactMailer.contact_email(contact_params).deliver_now!
      flash[:notice] = "Message envoyé avec succès, nous vous répondrons dans les plus brefs délais."
    else
      flash[:alert] = "Erreur lors de l'envoi du message. Veuillez réessayer."
    end
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :company, :email, :phone, :message)
  end
end
