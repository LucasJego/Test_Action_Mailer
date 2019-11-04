class UserMailer < ApplicationMailer
	# On définit la valeur par défaut de 'default[:from]'
	# 'default' est un hash qui permet de définir tout un 
	# ensemble de valeurs par défaut.
	# Celles-ci sont effacées si la méthode d'envoi d'email définit
	# une valeur autre
	default from: 'no-reply@monsite.fr'

	def welcome_email(user)
		# On récupère l'instance user pour ensuite pouvoir la passer à la view en @user
		@user = user

		# On définit une variable @url qu'on utilisera dans la view d'email
		@url = 'http://monsite.fr/login'

		# C'est cet appel à mail() qui permet d'envoyer l'email en définissant le destinataire et le sujet.
		mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end
end
