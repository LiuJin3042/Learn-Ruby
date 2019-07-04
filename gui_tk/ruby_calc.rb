# encoding:GBK
# A calculator with gui
# Author: LiuJin
# School Number: 10173042
# 2019-7-4

require 'tk'

# write title
msg = "CALCULATOR"
root = TkRoot.new {
  title msg
  minsize(500,500)
}

# row number
nrow = 7

# column number
ncol = 4

# store all commands
$commands = ''

# store present input, such as numbers
$tmp_input = ''

# store histories
$history = []

# update tmp input and commands
def update(input_num)
  $commands += input_num
  $tmp_input += input_num
end

# reset tmp input
def reset
  $tmp_input = ''
end

# commands label
cmd_label = TkLabel.new(root){
  text $commands
  pack :side=>'top', :fill=>'both'
}

# tmp input label
tmp_label = TkLabel.new(root){
  text $tmp_input
}

def update(cmd_label, tmp_label, input_num)
  $commands += input_num
  $tmp_input += input_num
  # it took me great pain to discover this method to
  # change the label dynamically
  cmd_label.configure('text'=>$commands)
  tmp_label.configure('text'=>$tmp_input)
  return NIL
end
TkButton.new(root){
  input_num = '1'
  text input_num
  pack :side=>'top', :fill=>'both'
  command{
    update(cmd_label, tmp_label, input_num)
 }
}
Tk.mainloop
