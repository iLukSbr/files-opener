[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Enable visual styles for the application
[System.Windows.Forms.Application]::EnableVisualStyles()

# Set compatible text rendering default
[System.Windows.Forms.Application]::SetCompatibleTextRenderingDefault($false)

# Set the form's font to a Unicode font
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Input'
$form.Size = New-Object System.Drawing.Size(300, 150)
$form.StartPosition = 'CenterScreen'
$form.Font = New-Object System.Drawing.Font("Arial Unicode MS", 10)

# Create controls with UTF-8 support
$label = New-Object System.Windows.Forms.Label
$label.Text = 'Escolha uma opcao:'
$label.Location = New-Object System.Drawing.Point(10, 10)
$label.Size = New-Object System.Drawing.Size(280, 20)
$form.Controls.Add($label)

# Change TextBox to RichTextBox
$richTextBox = New-Object System.Windows.Forms.RichTextBox
$richTextBox.Location = New-Object System.Drawing.Point(10, 40)
$richTextBox.Size = New-Object System.Drawing.Size(260, 30)
$richTextBox.Multiline = $false
$form.Controls.Add($richTextBox)

$okButton = New-Object System.Windows.Forms.Button
$okButton.Location = New-Object System.Drawing.Point(10, 110)
$okButton.Size = New-Object System.Drawing.Size(75, 23)
$okButton.Text = 'OK'
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$form.AcceptButton = $okButton
$form.Controls.Add($okButton)

$result = $form.ShowDialog()

if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
  $choice = $richTextBox.Text
  if ($choice -eq 'copy') {
    Start-Process "cmd.exe" -ArgumentList "/c copy_paste.bat" -WindowStyle Hidden
  } elseif ($choice -eq 'close') {
	  Start-Process "cmd.exe" -ArgumentList "/c close.bat" -WindowStyle Hidden
  } elseif ($choice -match '^[1-5]$') {
    Start-Process "cmd.exe" -ArgumentList "/c start.bat $choice" -WindowStyle Hidden
  } else {
    [System.Windows.Forms.MessageBox]::Show('Opcao invalida. Insira um numero entre 1 e 5.', 'Opcao invalida.')
  }
}