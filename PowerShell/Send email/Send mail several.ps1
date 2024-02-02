# Делаем отправку сообщения и лог-файла на несколько email-ов.
# Почта с которой будем отправлять письмо
$From = 
# Логин от почты
$Username = $From
# Пароль от почты (Для приложений)
$Password = 
 
# Кому
$To = "test@mail.ru","test2@mail.ru"
# Копия
#$Cc = "test3@gmail.com","test4@gmail.com"
# Скрытая копия
#$Bcc = "test5@gmail.com"

# SMTP Сервер
$SMTPServer = "smtp.mail.ru"
$SMTPPort = "587"

# Письмо
# Тема
$subject = "Тема"
# Текст письма
$body = "Текст"
# Вложение
$attachment = "Вложение"
 
$SecPassword = $Password | Convertto-SecureString -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -Argumentlist $Username,$SecPassword
 
Send-MailMessage -From $From -To $To <#-Cc $Cc -Bcc $Bcc#> -Subject $Subject -Body $Body -Attachment $Attachment -BodyAsHtml -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential $Credential
