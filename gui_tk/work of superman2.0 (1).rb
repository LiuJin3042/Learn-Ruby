require 'tk'
include Math
=begin
剩余inv变幻后deg按钮 dms
=end
def dms(num)
  a = num - num.to_i
  b = a * 100
  s = b * 100 - (b.to_i.to_f) * 100
  m = b.to_i.to_f
  result = num.to_i.to_f + 6 * m / 1000 + 6 * s / 100000
  test = (result * 100) - (result * 100).to_i
  if 100 * test >= 60
    result = result - 60.0 / 10000 +0.01
  else result
  end
end

def deg(num)
  a = num - num.to_i
  b = a * 100
  a = b - b.to_i
  c = a * 100
  num.to_i + b / 60 + 0.01 * c / 60
end

def f_e(number)
  n = 0
  loop do
    if (number ** 2 >=1 && number ** 2 < 100)
      break
    elsif number ** 2 >= 100
      number /= 10
      n += 1
    else 
      number *= 10 
      n -= 1
    end
  end
  "#{number}+10E#{n}"
end

class Fixnum
  def /(other)
    a = self.to_f
    b = other.to_f
    a / b
  end
end

def yroot(number1,number2)
  a = 1 / number2
  b = number1.to_f
  b ** a
end


def jiecheng(number)
  int = 1
  number.to_i
  if number >= 0
    (1..number).each{|i|int *= i}
  end
  int
end

class Superstring 
  def initialize(string,lock)
    @string = string
    @lock = lock
  end  
  
  def stringbutton(number)
    if (@lock || @string == "0")
      @string = number
      @lock = false
    else
      @string << number
    end
  end
  
  def addpoint
    if @string =~ /[.]/
    elsif @lock || @string == ""
      @string = "0."
    else @string << "."
    end
  end
  
  def string
    if @string == ""
      "0"
    else @string
    end
  end
  
  def string_ath
    @string
  end
  
  attr_accessor :lock
  attr_writer :string 
end


root = TkRoot.new do #初始化窗体
  title "calculator"  
  geometry "370x280"  
end

#单选按钮的初始化,默认弧度
radioVar = TkVariable.new
r1 = TkRadioButton.new(root){
text "度"
variable radioVar
value 1
}
r1.place('x'=>15,'y'=>95)

r2 = TkRadioButton.new(root){
text "弧度(默认)"
variable radioVar
value 2
}
r2.place('x'=>50,'y'=>95)
    
r3 = TkRadioButton.new(root){
text "梯度"
variable radioVar
value 3
}
r3.place('x'=>131,'y'=>95)
#按钮的初始化
needm = TkLabel.new(root,'text'=>'').place('height'=>20,'width'=>10,'x'=>15,'y'=>10)
  need2 = TkLabel.new(root,'text'=>'').place('height'=>20,'width'=>170,'x'=>60,'y'=>10)
  need = TkLabel.new(root,'text'=>'0').place('height'=>50,'width'=>170,'x'=>60,'y'=>35)
  needkuo = TkButton.new(root, 'text'=>'').place('height'=>25,'width'=>30,'x'=>15,'y'=>125)
  int = TkButton.new(root, 'text'=>'int').place('height'=>25,'width'=>30,'x'=>15,'y'=>155)
  dms = TkButton.new(root, 'text'=>'dms').place('height'=>25,'width'=>30,'x'=>15,'y'=>185)
  pi = TkButton.new(root, 'text'=>'π').place('height'=>25,'width'=>30,'x'=>15,'y'=>215)
  fe = TkButton.new(root, 'text'=>'F-E').place('height'=>25,'width'=>30,'x'=>15,'y'=>245)
  inv = TkButton.new(root, 'text'=>'Inv').place('height'=>25,'width'=>30,'x'=>50,'y'=>125)
  sinh = TkButton.new(root, 'text'=>'sinh').place('height'=>25,'width'=>30,'x'=>50,'y'=>155)
  cosh = TkButton.new(root, 'text'=>'cosh').place('height'=>25,'width'=>30,'x'=>50,'y'=>185)
  tanh = TkButton.new(root, 'text'=>'tanh').place('height'=>25,'width'=>30,'x'=>50,'y'=>215)
  exp = TkButton.new(root, 'text'=>'Exp').place('height'=>25,'width'=>30,'x'=>50,'y'=>245)
  indui = TkButton.new(root, 'text'=>'In').place('height'=>25,'width'=>30,'x'=>85,'y'=>125)
  sin = TkButton.new(root, 'text'=>'sin').place('height'=>25,'width'=>30,'x'=>85,'y'=>155)
  cos = TkButton.new(root, 'text'=>'cos').place('height'=>25,'width'=>30,'x'=>85,'y'=>185)
  tan = TkButton.new(root, 'text'=>'tan').place('height'=>25,'width'=>30,'x'=>85,'y'=>215)
  mod = TkButton.new(root, 'text'=>'Mod').place('height'=>25,'width'=>30,'x'=>85,'y'=>245)
  kuol = TkButton.new(root, 'text'=>'(').place('height'=>25,'width'=>30,'x'=>120,'y'=>125)
  squ = TkButton.new(root, 'text'=>'x²').place('height'=>25,'width'=>30,'x'=>120,'y'=>155)
  chifm = TkButton.new(root, 'text'=>'xⁿ').place('height'=>25,'width'=>30,'x'=>120,'y'=>185)
  chif = TkButton.new(root, 'text'=>'x³').place('height'=>25,'width'=>30,'x'=>120,'y'=>215)
  log = TkButton.new(root, 'text'=>'log').place('height'=>25,'width'=>30,'x'=>120,'y'=>245)
  kuor = TkButton.new(root, 'text'=>')').place('height'=>25,'width'=>30,'x'=>155,'y'=>125)
  jiec = TkButton.new(root, 'text'=>'n!').place('height'=>25,'width'=>30,'x'=>155,'y'=>155)
  twi = TkButton.new(root, 'text'=>'ⁿ√').place('height'=>25,'width'=>30,'x'=>155,'y'=>185)
  thr = TkButton.new(root, 'text'=>'³√').place('height'=>25,'width'=>30,'x'=>155,'y'=>215)
  kexue = TkButton.new(root, 'text'=>'10ⁿ').place('height'=>25,'width'=>30,'x'=>155,'y'=>245)
  mc = TkButton.new(root, 'text'=>'MC').place('height'=>25,'width'=>30,'x'=>190,'y'=>95)
  de = TkButton.new(root, 'text'=>'DEC').place('height'=>25,'width'=>30,'x'=>190,'y'=>125)
  n7 = TkButton.new(root, 'text'=>'7').place('height'=>25,'width'=>30,'x'=>190,'y'=>155)
  n4 = TkButton.new(root, 'text'=>'4').place('height'=>25,'width'=>30,'x'=>190,'y'=>185)
  n1 = TkButton.new(root, 'text'=>'1').place('height'=>25,'width'=>30,'x'=>190,'y'=>215)
  n0 = TkButton.new(root, 'text'=>'0').place('height'=>25,'width'=>65,'x'=>190,'y'=>245)
  mr = TkButton.new(root, 'text'=>'MR').place('height'=>25,'width'=>30,'x'=>225,'y'=>95)
  ce = TkButton.new(root, 'text'=>'CE').place('height'=>25,'width'=>30,'x'=>225,'y'=>125)
  n8 = TkButton.new(root, 'text'=>'8').place('height'=>25,'width'=>30,'x'=>225,'y'=>155)
  n5 = TkButton.new(root, 'text'=>'5').place('height'=>25,'width'=>30,'x'=>225,'y'=>185)
  n2 = TkButton.new(root, 'text'=>'2').place('height'=>25,'width'=>30,'x'=>225,'y'=>215)
  ms = TkButton.new(root, 'text'=>'MS').place('height'=>25,'width'=>30,'x'=>260,'y'=>95)
  c = TkButton.new(root, 'text'=>'C').place('height'=>25,'width'=>30,'x'=>260,'y'=>125)
  n9 = TkButton.new(root, 'text'=>'9').place('height'=>25,'width'=>30,'x'=>260,'y'=>155)
  n6 = TkButton.new(root, 'text'=>'6').place('height'=>25,'width'=>30,'x'=>260,'y'=>185)
  n3 = TkButton.new(root, 'text'=>'3').place('height'=>25,'width'=>30,'x'=>260,'y'=>215)
  sp = TkButton.new(root, 'text'=>'.').place('height'=>25,'width'=>30,'x'=>260,'y'=>245)
  mma = TkButton.new(root, 'text'=>'M+').place('height'=>25,'width'=>30,'x'=>295,'y'=>95)
  admi = TkButton.new(root, 'text'=>'±').place('height'=>25,'width'=>30,'x'=>295,'y'=>125)
  div = TkButton.new(root, 'text'=>'/').place('height'=>25,'width'=>30,'x'=>295,'y'=>155)
  ti = TkButton.new(root, 'text'=>'*').place('height'=>25,'width'=>30,'x'=>295,'y'=>185)
  smi = TkButton.new(root, 'text'=>'-').place('height'=>25,'width'=>30,'x'=>295,'y'=>215)
  add = TkButton.new(root, 'text'=>'+').place('height'=>25,'width'=>30,'x'=>295,'y'=>245)
  mmi = TkButton.new(root, 'text'=>'M-').place('height'=>25,'width'=>30,'x'=>330,'y'=>95)
  sq = TkButton.new(root, 'text'=>'√').place('height'=>25,'width'=>30,'x'=>330,'y'=>125)
  per = TkButton.new(root, 'text'=>'%').place('height'=>25,'width'=>30,'x'=>330,'y'=>155)
  dev1 = TkButton.new(root, 'text'=>'1/x').place('height'=>25,'width'=>30,'x'=>330,'y'=>185)
eq = TkButton.new(root, 'text'=>'=').place('height'=>55,'width'=>30,'x'=>330,'y'=>215)

stringtext2 = ""
stringM = ""
superstring = Superstring.new("",false)
numberM = 0
is_m = false
kuotime = 0
zhidingyi = false
is_f_e_press = false
is_inv_press = false

n0.bind("1") {
    superstring.stringbutton("0")
    need['text'] = superstring.string
}
n1.bind("1") {
    superstring.stringbutton("1")
    need['text'] = superstring.string
}
n2.bind("1") {
    superstring.stringbutton("2")
    need['text'] = superstring.string
}
n3.bind("1") {
    superstring.stringbutton("3")
    need['text'] = superstring.string
}
n4.bind("1") {
    superstring.stringbutton("4")
    need['text'] = superstring.string
}
n5.bind("1") {
    superstring.stringbutton("5")
    need['text'] = superstring.string
}
n6.bind("1") {
    superstring.stringbutton("6")
    need['text'] = superstring.string
}
n7.bind("1") {
    superstring.stringbutton("7")
    need['text'] = superstring.string
}
n8.bind("1") {
    superstring.stringbutton("8")
    need['text'] = superstring.string
}
n9.bind("1") {
    superstring.stringbutton("9")
    need['text'] = superstring.string
}

sp.bind("1"){
    superstring.addpoint
    need['text'] = superstring.string
}
c.bind("1") {
    zhidingyi = false
    superstring = Superstring.new("",false)
    need['text'] = superstring.string
    stringtext2 = ""
    need2['text'] = stringtext2
    kuotime = 0
    needkuo['text'] = ""
}
ce.bind("1") {
    zhidingyi = false
    superstring = Superstring.new("",false)
    need['text'] = superstring.string
}
admi.bind("1"){ 
    if superstring.string =~ /[-]/
      superstring.string.sub!(/[-]/,"")
    else superstring.string = "-" << superstring.string
    end
    need['text'] = superstring.string
}

de.bind("1"){
    unless superstring.lock
    superstring.string.chop!
    need['text'] = superstring.string
    end
}

dev1.bind("1") {
    number96 = superstring.string.to_f
    number96 = 1 / number96
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

sq.bind("1") {
    number96 = superstring.string.to_f
    number96 = Math.sqrt(number96)
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

ms.bind("1") {
    numberM = superstring.string.to_f
    needm['text'] = "M"
    superstring = Superstring.new("",false)
    is_m = true
    need2['text'] = numberM
}

mr.bind("1") {
    superstring = Superstring.new("",true)
    superstring.string = numberM.to_s
    need['text'] = superstring.string
}

mc.bind("1") {
    needm['text'] = ""
    numberM = 0
    is_m = false
}

mmi.bind("1"){
    numberM -= superstring.string.to_f
}

mma.bind("1"){
    numberM += superstring.string.to_f
}

add.bind("1"){
    if zhidingyi
      zhidingyi = false
    else
      stringtext2 << superstring.string
    end
    stringtext2 << "+"
    superstring = Superstring.new("",false)
    need2['text'] = stringtext2
}

twi.bind("1"){
    unless zhidingyi 
      zhidingyi = true
      stringtext2 << "yroot("
      stringtext2 << superstring.string
      stringtext2 << ","
      superstring = Superstring.new("",false)
      need2['text'] = stringtext2
      kuotime += 1
      needkuo['text'] = "(=" + kuotime.to_s
    end
}

mod.bind("1"){
    number96 = superstring.string.to_f
    number96 = E % number96
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

smi.bind("1"){
    if zhidingyi
      zhidingyi = false
    else
      stringtext2 << superstring.string
    end
    stringtext2 << "-"
    superstring = Superstring.new("",false)
    need2['text'] = stringtext2
}

ti.bind("1"){
    if zhidingyi
      zhidingyi = false
    else
      stringtext2 << superstring.string
    end
    stringtext2 << "*"
    superstring = Superstring.new("",false)
    need2['text'] = stringtext2
}

div.bind("1"){
    if zhidingyi
      zhidingyi = false
    else
      stringtext2 << superstring.string
    end
    stringtext2 << "/"
    superstring = Superstring.new("",false)
    need2['text'] = stringtext2
}

per.bind("1"){
    if zhidingyi
      zhidingyi = false
    else
      stringtext2 << superstring.string
    end
    stringtext2 << "%"
    superstring = Superstring.new("",false)
    need2['text'] = stringtext2
}

chifm.bind("1"){
    stringtext2 << superstring.string
    stringtext2 << "**"
    superstring = Superstring.new("",false)
    need2['text'] = stringtext2
}
eq.bind("1"){
    stringtext2 << superstring.string_ath
    numberfi = eval(stringtext2)
    superstring.string = numberfi.to_s
    superstring.lock = true
    if is_f_e_press
    need['text'] = f_e(numberfi) 
    else need['text'] = numberfi
    end
    need2['text'] = stringtext2
    stringtext2 = ""
}

chif.bind("1"){
    number96 = superstring.string.to_f
    number96 = number96 ** 3
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

squ.bind("1"){
    number96 = superstring.string.to_f
    number96 = number96 ** 2
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

exp.bind("1"){
    number96 = superstring.string.to_f
    number96 = E ** number96
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

int.bind("1"){
    number96 = superstring.string.to_f 
    unless is_inv_press
      number96 = number96.to_i
      superstring.string = number96.to_s
      need['text'] = superstring.string
      superstring.lock = true
    else
      number96 = number96 - number96.to_i
      superstring.string = number96.to_s
      need['text'] = superstring.string
      superstring.lock = true
    end
}

pi.bind("1"){
    number96 = superstring.string.to_f 
    unless  is_inv_press
      number96 = PI
      superstring.string = number96.to_s
      need['text'] = superstring.string
      superstring.lock = true
    else
      number96 = PI * 2
      superstring.string = number96.to_s
      need['text'] = superstring.string
      superstring.lock = true
    end
}

indui.bind("1"){
    number96 = superstring.string.to_f 
    unless is_inv_press
      number96 = log(number96)
      superstring.string = number96.to_s
      need['text'] = superstring.string
      superstring.lock = true
    else
      number96 = E ** number96
      superstring.string = number96.to_s
      need['text'] = superstring.string
      superstring.lock = true
    end
}

log.bind("1"){
    number96 = superstring.string.to_f
    number96 = log10(number96)
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

sin.bind("1"){
    number96 = superstring.string.to_f 
    if is_inv_press == false
      if radioVar.value == "1"
        number96 = (number96 / 180) * PI
      elsif radioVar.value == "3"
        number96 = (number96 / 200) * PI
      else
      end
    number96 = sin(number96)
    else
      number96 = asin(number96)
      if radioVar.value == "1"
        number96 = number96 * 180 / PI
      elsif radioVar.value == "3"
        number96 = number96 * 200 / PI
      else
      end
    end
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

cos.bind("1"){
    number96 = superstring.string.to_f 
    if is_inv_press == false
      if radioVar.value == "1"
        number96 = (number96 / 180) * PI
      elsif radioVar.value == "3"
        number96 = (number96 / 200) * PI
      else
      end
    number96 = cos(number96)
    else
      number96 = acos(number96)
      if radioVar.value == "1"
        number96 = number96 * 180 / PI
      elsif radioVar.value == "3"
        number96 = number96 * 200 / PI
      else
      end
    end
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

tan.bind("1"){
    number96 = superstring.string.to_f 
    if is_inv_press == false
      if radioVar.value == "1"
        number96 = (number96 / 180) * PI
      elsif radioVar.value == "3"
        number96 = (number96 / 200) * PI
      else
      end
    number96 = tan(number96)
    else
      number96 = tan(number96)
      if radioVar.value == "1"
        number96 = number96 * 180 / PI
      elsif radioVar.value == "3"
        number96 = number96 * 200 / PI
      else
      end
    end
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

sinh.bind("1"){
    number96 = superstring.string.to_f
    if is_inv_press == false
      number96 = sinh(number96)
    else
      number96 = asinh(number96)
    end
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

cosh.bind("1"){
    number96 = superstring.string.to_f
    if is_inv_press == false
      number96 = cosh(number96)
    else
      number96 = acosh(number96)
    end
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

tanh.bind("1"){
    number96 = superstring.string.to_f
    if is_inv_press == false
      number96 = tanh(number96)
    else
      number96 = atanh(number96)
    end
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

dms.bind("1"){
    number96 = superstring.string.to_f
    if is_inv_press == false
      number96 = dms(number96)
    else
      number96 = deg(number96)
    end
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

thr.bind("1"){
    number96 = superstring.string.to_f
    number96 = Math.cbrt(number96)
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}


kexue.bind("1"){
    number96 = superstring.string.to_f
    number96 = 10 ** number96
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

jiec.bind("1"){
    number96 = superstring.string.to_f
    number96 = jiecheng(number96)
    superstring.string = number96.to_s
    need['text'] = superstring.string
    superstring.lock = true
}

kuol.bind("1"){
    unless stringtext2 =~ /[)$]/
      stringtext2 << "("
      need2['text'] = stringtext2
      kuotime += 1
      needkuo['text'] = "(=" + kuotime.to_s
    end
}

kuor.bind("1"){
    if kuotime != 0
      stringtext2 << superstring.string
      stringtext2 << ")"
      superstring = Superstring.new("",false)
      need2['text'] = stringtext2
      kuotime -= 1
      if kuotime != 0
        needkuo['text'] = "(=" + kuotime.to_s
      else needkuo['text'] = ""
      end
    end
}

fe.bind("1"){
    unless is_f_e_press
      fe.configure('foreground'=>'blue')
      is_f_e_press = true
    else
      fe.configure('foreground'=>'black')
      is_f_e_press = false
    end
}

inv.bind("1"){
    unless is_inv_press
      inv.configure('foreground'=>'blue')
      is_inv_press = true
      pi['text'] = "2*π"
      indui['text'] = "eⁿ"
      sin['text'] = "asin"
      cos['text'] = "acos"
      tan['text'] = "atan"
      sinh['text'] = "asinh"
      cosh['text'] = "acosh"
      tanh['text'] = "atanh"
      dms['text'] = "deg"
      int['text'] = "Frac"
    else
      inv.configure('foreground'=>'black')
      is_inv_press = false
      pi['text'] = "π"
      indui['text'] = "In"
      sin['text'] = "sin"
      cos['text'] = "cos"
      tan['text'] = "tan"
      tanh['text'] = "tanh"
      cosh['text'] = "cosh"
      sinh['text'] = "sinh"
      dms['text'] = "dms"
      int['text'] = "Int"
    end
}
Tk.mainloop