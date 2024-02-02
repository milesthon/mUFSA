$msgBoxInput = [System.Windows.MessageBox]::Show('Сохраняйте свои файлы только на диске. После чего скидывайте их на свои флешки, что бы избежать потерю своих важных файлов. Помните - открытые файлы никто не сможет удалить. 

Мы не несем ответственность за сохранность ваших файлов!','Важно!','YesNo','Warning')

  switch  ($msgBoxInput) {
   
  'Yes' {$msgBoxInput = [System.Windows.MessageBox]::Show('Спасибо за понимание! Успешной работы:)')}
  
  'No' {$msgBoxInput = [System.Windows.MessageBox]::Show('Сохраняйте свои файлы только на диске. После чего скидывайте их на свои флешки, что бы избежать потерю своих важных файлов. Помните - открытые файлы никто не сможет удалить. 

Мы не несем ответственность за сохранность ваших файлов!','Важно!','YesNo','Warning')
switch  ($msgBoxInput) {
   
  'Yes' {$msgBoxInput = [System.Windows.MessageBox]::Show('Спасибо за понимание! Успешной работы:)')}
  
  'No' {$msgBoxInput = [System.Windows.MessageBox]::Show('Ай ай ай!')}
}}
}