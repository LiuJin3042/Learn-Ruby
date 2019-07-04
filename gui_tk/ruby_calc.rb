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

# commands label
cmd_label = TkLabel.new(root){
  text $commands
  pack :side=>'top', :fill=>'both'
}

# tmp input label
tmp_label = TkLabel.new(root){
  text $tmp_input
  pack :side=>'top', :fill=>'both'
}

# update label by eval(update)
# it took me great pain to discover this method to
# change the label dynamically
# use '.configure' to update label
# the method 'command' doesn't support function with parameters
# so have to write the parameter to string and execute it
update = "
$commands += input_num
$tmp_input += input_num
cmd_label.configure('text'=>$commands)
tmp_label.configure('text'=>$tmp_input)
"
# reset the tmp input label
reset = "
$commands += input_sym
$tmp_input = ''
cmd_label.configure('text'=>$commands)
tmp_label.configure('text'=>$tmp_input)
"

# valuate commandso
valuate = "

"

TkButton.new(root){
  input_num = '1'
  text input_num
  pack :side=>'top', :fill=>'both'
  command{
    eval(update)
  }
}

TkButton.new(root) do
  input_sym = '+'
  text input_sym
  pack :side=>'top', :fill=>'both'
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  get_ans = '='
  text get_ans
  pack :side=>'top', :fill=>'both'
  command{
    begin
      ans = eval($commands).to_s
      $commands = ''
      $tmp_input = ''
      # clear cmd label while saving the commands value to be
      # called next time
      cmd_label.configure('text'=>'')
      tmp_label.configure('text'=>ans)
    rescue => ex
      $commands = ''
      $tmp_input = ''
      msg = ex.message
      cmd_label.configure('text'=>msg)
      tmp_label.configure('text'=>msg)
    end
    }
end
Tk.mainloop
