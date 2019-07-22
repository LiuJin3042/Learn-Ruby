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
  width = 391
  length = 311
  minsize(length, width)
  maxsize(length, width)
  iconbitmap './calc_ico_32pix.ico'
}

# row number
nrow = 7

# column number
ncol = 4

# store all commands
$commands = ''

# store present input, such as numbers
$tmp_input = '0'

# store histories
$buffer = ''

# symbols used
$symbols = '+-*/.'

# commands label
cmd_label = TkLabel.new(root, :text=>$commands).grid(:column=>0, :row=>0, :columnspan=>4)
cmd_label.configure(
    :font=>'arial 10',
    :width=>38,
    :height=>1,
    # se for south-east, that is, right alignment
    :anchor=>'se'
)
# tmp input label
tmp_label = TkLabel.new(root, :text=>$tmp_input, :justify=>'left').grid(:column=>0, :row=>1, :columnspan=>4)
tmp_label.configure(
    :font=>'arial 20 bold',
    :width=>18,
    :height=>1,
    :anchor=>'se'
)

# some orders to be executed by number buttons
# update label by eval(update)
# it took me great pain to discover this method to
# change the label dynamically
# use '.configure' to update label
# the method 'command' doesn't support function with parameters
# so have to write the parameter to string and execute it
update = "
if $buffer != ''
  $buffer = ''
end
if $tmp_input == '0'
  $tmp_input = ''
end
# tmp_input cannot be too long
if $tmp_input.length < 20
  $tmp_input += input_num
  cmd_label.configure('text'=>$commands)
  tmp_label.configure('text'=>$tmp_input)
end
"
# reset the tmp input label
reset = "
# to let user operate directly to last ans
# i put the ans into $buffer
if $buffer != ''
  $commands += $buffer
  $buffer = ''
end
$commands += $tmp_input
# need to exclude the situation when $commands is empty or ends with symbols(+-*/.)
if $commands != '' or (not $symbols.include?($commands[-1]))
  $commands += input_sym
  $tmp_input = ''
  cmd_label.configure('text'=>$commands)
  tmp_label.configure('text'=>$tmp_input)
end
"

grid_format = "
width 4
height 1
font \"arial 20 bold\"
background '#DDDDDD'
"

creat_button = "
$num_%d = TkButton.new(root){
  input_num = %d.to_s
  text input_num
  grid :column=>(%d-1)%%3, :row=>6-(%d-1)/3
  eval(grid_format)
  command{
    eval(update)
  }
}
"

(0..9).each do |i|
  cmd = format(creat_button,i, i, i, i)
  eval(cmd)
end



TkButton.new(root) do
  input_sym = '+'
  text input_sym
  grid :column=>3, :row=>6
  eval(grid_format)
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  input_sym = '-'
  text input_sym
  grid :column=>3, :row=>5
  eval(grid_format)
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  input_sym = '*'
  text input_sym
  grid :column=>3, :row=>4
  eval(grid_format)
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  input_sym = '*1.0/'
  text '/'
  grid :column=>3, :row=>3
  eval(grid_format)
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  # if inputs are all integers then perform integer division
  input_sym = '/'
  text '//'
  grid :column=>0, :row=>2
  eval(grid_format)
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  text '+/-'
  grid :column=>0, :row=>7
  eval(grid_format)
  command{
    if $tmp_input == ''
      $tmp_input = $buffer
      $buffer = ''
    end
    $tmp_input = (eval($tmp_input) * (-1)).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  input_sym = '.'
  text input_sym
  grid :column=>1, :row=>7
  eval(grid_format)
  command{
    if $tmp_input == ''
      $tmp_input = '0'
    end
    if not $tmp_input.include?(input_sym)
      $tmp_input += input_sym
      tmp_label.configure(:text=>$tmp_input)
    end
  }
end

TkButton.new(root) do
  input_sym = '√'
  text input_sym
  grid :column=>1, :row=>2
  eval(grid_format)
  command{
    if $tmp_input == ''
      $tmp_input = $buffer
      $buffer = ''
    end
    $tmp_input = Math.sqrt( ($tmp_input.to_f) ).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  input_sym = '^2'
  text input_sym
  grid :column=>2, :row=>2
  eval(grid_format)
  command{
    if $tmp_input == ''
      $tmp_input = $buffer
      $buffer = ''
    end
    $tmp_input = (eval($tmp_input) ** 2).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  input_sym = '1/x'
  text input_sym
  grid :column=>3, :row=>2
  eval(grid_format)
  command{
    if $tmp_input == ''
      $tmp_input = $buffer
      $buffer = ''
    end
    $tmp_input = (1.0/eval($tmp_input)).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  get_ans = '='
  text get_ans
  grid :column=>3, :row=>7
  eval(grid_format)
  command{
    # add last input into commands
    begin
      # add last input
      $commands += $tmp_input
      # easter egg! happy birthday yae sakura
      if $commands == '0*722*'
        img = TkPhotoImage.new('file'=>'./yae_sakura/happy_birthday.gif')
        top_window = TkToplevel.new(root)
        TkLabel.new(top_window, 'image'=>img).grid('column'=>0, 'row'=>0)
        TkLabel.new(top_window, 'text'=>'HAPPY BIRTHDAY').grid('column'=>0, 'row'=>1)
        TkLabel.new(top_window, 'text'=>'LOVE YOU FOREVER').grid('column'=>0, 'row'=>2)
        $commands = '0'
      end
      # if commands is still empty, make it zero
      if $commands == ''
        $commands = '0'
      end
      # if last input is a symbol, delete last input
      if $symbols.include?($commands[-1])
        $commands.chop!
      end
      # eval commands and convert to string
      ans = eval($commands).to_s
      # save ans to buffer for further use and clear commands
      $buffer = ans
      # clear commands
      $commands = ''
      $tmp_input = ''
      # clear cmd label while saving the commands value to be
      # called next time
      cmd_label.configure('text'=>'')
      tmp_label.configure('text'=>ans)
    rescue => err
      $commands = ''
      $buffer = ''
      $tmp_input = ''
      cmd_label.configure('text'=>'')
      tmp_label.configure('text'=>err.message)
    end
  }
end

TkButton.new(root) do
  tmp_clear = 'CE'
  text tmp_clear
  grid :column=>0, :row=>3
  eval(grid_format)
  command{
    $tmp_input = '0'
    tmp_label.configure('text'=>$tmp_input)
  }
end

TkButton.new(root) do
  all_clear = 'C'
  text all_clear
  grid :column=>1, :row=>3
  eval(grid_format)
  command{
    $tmp_input = '0'
    $commands = ''
    $buffer = ''
    tmp_label.configure('text'=>$tmp_input)
    cmd_label.configure('text'=>$commands)
  }
end

TkButton.new(root) do
  back_space = 'DEL'
  text back_space
  grid :column=>2, :row=>3
  eval(grid_format)
  command{
    if $tmp_input != ''
      $tmp_input.chop!
      tmp_label.configure('text'=>$tmp_input)
    end
  }
end

Tk.mainloop

