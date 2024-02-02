$EmailTo = 
$EmailFrom = 
$Subject = 
$Body = 
$SMTPServer = "smtp.mail.ru" 
$filenameAndPath = "C:\1.log"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$attachment = New-Object System.Net.Mail.Attachment($filenameAndPath)
$SMTPMessage.IsBodyHTML=$true
$SMTPMessage.Attachments.Add($attachment)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("", "");
$SMTPClient.Send($SMTPMessage)