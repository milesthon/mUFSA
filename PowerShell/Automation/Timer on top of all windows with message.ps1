#Adjust delay here
$delay = 5

$Counter_Form = New-Object System.Windows.Forms.Form
$Counter_Form.Text = "Внимание!"

#Form size options
$Counter_Form.Width = 350
$Counter_Form.Height = 150

#Centers form on screen
$Counter_Form.StartPosition = "CenterScreen"

#Places form on top of everything else
$Counter_Form.TopMost = $true

$Counter_Label = New-Object System.Windows.Forms.Label
$Counter_Label2 = New-Object System.Windows.Forms.Label

#Label2's text
$Counter_Label2.Text = "Пожалуйста сохраните вашу работу!"

#Labels size and position
$Counter_Label.AutoSize = $true
$Counter_Label.Location = New-Object System.Drawing.Point(50,60)
$Counter_Label2.AutoSize = $true
$Counter_Label2.Location = New-Object System.Drawing.Point(60,30)


$Counter_Form.Controls.Add($Counter_Label)
$Counter_Form.Controls.Add($Counter_Label2)

while ($delay -ge 0)
{
  $Counter_Form.Show()


#Timer label's text
  $Counter_Label.Text = "Это сообщение закроется через $($delay) секунд"


  start-sleep 1
  $delay -= 1
}
$Counter_Form.Close() 