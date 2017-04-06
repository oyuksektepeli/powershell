#Shared Mailbox' a Full Access ve SendAs izinleri arabirimden verilse bile çalışmaz. İzinleri verilmesi için alttaki iki komutu kullanmalısınız


Add-MailboxPermission -Identity "Shared Mailbox Name" -User "User Name " -AccessRights FullAccess
Add-RecipientPermission "Shared Mailbox Name" -Trustee "UserName" -AccessRights SendAs
