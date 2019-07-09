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
$history = ''

# symbols used
$symbols = '+-*/.'
# commands label
cmd_label = TkLabel.new(root){
  text $commands
  grid :column=>0, :row=>0, :columnspan=>4
}

# tmp input label
tmp_label = TkLabel.new(root){
  text $tmp_input
  grid :column=>0, :row=>1, :columnspan=>4
}

# update label by eval(update)
# it took me great pain to discover this method to
# change the label dynamically
# use '.configure' to update label
# the method 'command' doesn't support function with parameters
# so have to write the parameter to string and execute it
update = "
if $history != ''
  $history = ''
end
$tmp_input += input_num
cmd_label.configure('text'=>$commands)
tmp_label.configure('text'=>$tmp_input)
"
# reset the tmp input label
reset = "
# to let user operate directly to last ans
# i put the ans into $history
if $history != ''
  $commands += $history
  $history = ''
end
$commands += $tmp_input
if $commands == '' or (not $symbols.include?($commands[-1]))
  $commands += input_sym
  $tmp_input = ''
  cmd_label.configure('text'=>$commands)
  tmp_label.configure('text'=>$tmp_input)
end
"

# valuate commandso
valuate = "

"

TkButton.new(root){
  input_num = '1'
  text input_num
  grid :column=>0, :row=>6
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '2'
  text input_num
  grid :column=>1, :row=>6
  command{
    eval(update)
  }
}
TkButton.new(root){
  input_num = '3'
  text input_num
  grid :column=>2, :row=>6
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '4'
  text input_num
  grid :column=>0, :row=>5
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '5'
  text input_num
  grid :column=>1, :row=>5
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '6'
  text input_num
  grid :column=>2, :row=>5
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '7'
  text input_num
  grid :column=>0, :row=>4
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '8'
  text input_num
  grid :column=>1, :row=>4
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '9'
  text input_num
  grid :column=>2, :row=>4
  command{
    eval(update)
  }
}

TkButton.new(root){
  input_num = '0'
  text input_num
  grid :column=>1, :row=>7
  command{
    eval(update)
  }
}

TkButton.new(root) do
  input_sym = '+'
  text input_sym
  grid :column=>3, :row=>6
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  input_sym = '-'
  text input_sym
  grid :column=>3, :row=>5
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  input_sym = '*'
  text input_sym
  grid :column=>3, :row=>4
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  input_sym = '*1.0/'
  text '/'
  grid :column=>3, :row=>3
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  input_sym = '/'
  text '//'
  grid :column=>0, :row=>2
  command{
    eval(reset)
  }
end

TkButton.new(root) do
  text '+/-'
  grid :column=>0, :row=>7
  command{
    if $tmp_input == ''
      $tmp_input = $history
      $history = ''
    end
    $tmp_input = (eval($tmp_input) * (-1)).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  input_sym = '.'
  text input_sym
  grid :column=>2, :row=>7
  command{
    if $tmp_input == ''
      $tmp_input = '0'
    end
    $tmp_input += input_sym
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  input_sym = '√'
  text input_sym
  grid :column=>1, :row=>2
  command{
    if $tmp_input == ''
      $tmp_input = $history
      $history = ''
    end
    $tmp_input = Math.sqrt( ($tmp_input) ).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  input_sym = '^2'
  text input_sym
  grid :column=>2, :row=>2
  command{
    if $tmp_input == ''
      $tmp_input = $history
      $history = ''
    end
    $tmp_input = (eval($tmp_input) ** 2).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  input_sym = '1/x'
  text input_sym
  grid :column=>3, :row=>2
  command{
    if $tmp_input == ''
      $tmp_input = $history
      $history = ''
    end
    $tmp_input = (1.0/eval($tmp_input)).to_s
    tmp_label.configure(:text=>$tmp_input)
  }
end

TkButton.new(root) do
  get_ans = '='
  text get_ans
  grid :column=>3, :row=>7
  command{
    # add last input into commands
    begin
      $commands += $tmp_input
      if $symbols.include?($commands[-1])
        $commands.chop!
      end
      # eval commands and convert to string
      ans = eval($commands).to_s
      # save ans to history for further use and clear commands
      $history = ans
      $commands = ''
      $tmp_input = ''
      # clear cmd label while saving the commands value to be
      # called next time
      cmd_label.configure('text'=>'')
      tmp_label.configure('text'=>ans)
    rescue => err
      $commands = ''
      $history = ''
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
  command{
    $tmp_input = ''
    tmp_label.configure('text'=>$tmp_input)
  }
end

TkButton.new(root) do
  all_clear = 'C'
  text all_clear
  grid :column=>1, :row=>3
  command{
    $tmp_input = ''
    $commands = ''
    $history = ''
    tmp_label.configure('text'=>$tmp_input)
    cmd_label.configure('text'=>$commands)
  }
end
Tk.mainloop

