class User < ApplicationRecord

	# Un email de bienvenue sera envoyé à la création d'un user :
  # juste après l'inscription, la méthode d'instance 'welcome_send'
  # est appelée. Celle-ci ne fait qu'appeler le mailer 'UserMailer'
  # en lui faisant exécuter welcome_email avec, pour seule entrée,
  # l'instance créée (d'où le self).
	# juste après la création)
  after_create :welcome_send

  # Méthode qui envoie un email de bienvenue.
  # La méthode appelle le mailer 'UserMailer' en lui
  # faisant exécuter 'welcome_email' qu'il contient
  # 'deliver_now' permet d'envoyer l'email immédiatement
  def welcome_send
  	UserMailer.welcome_email(self).deliver_now
  end

end
