class UserMailer < ApplicationMailer
    def user_created(user)
        @user = user
        
        @url  = 'leboncoindudessin@gmail.com' 
       # @user = User
        #@greeting = "Hi"
    
        mail(
          from: "leboncoindudessin@gmail.com",
           to: @user.email,
           #cc: User.all.pluck(:email),
           #bcc: "secret@jerry.com",
           subject: "Bienvenue sur le bon coin du dessin" 
         )
      end
end
