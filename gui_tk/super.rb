#encoding:GBK
require 'tk'
require 'tk'
msg="计算器"
root=TkRoot.new{title msg}
var=TkVariable.new
a=0
b=0
i=0

TkButton.new(root){
text '+'
place:'height'=>60,'width'=>60,'x'=>180,'y'=>30
    command{
	i=1
	c=a.to_s+"+"
    label1=TkLabel.new(root){
    text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '-'
place:'height'=>60,'width'=>60,'x'=>240,'y'=>30
    command{
	i=2
	c=a.to_s+"-"
    label1=TkLabel.new(root){
    text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '*'
place:'height'=>60,'width'=>60,'x'=>180,'y'=>90
    command{
	i=3
	c=a.to_s+"*"
    label1=TkLabel.new(root){
    text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '/'
place:'height'=>60,'width'=>60,'x'=>240,'y'=>90
    command{
	i=4
	c=a.to_s+"/"
    label1=TkLabel.new(root){
    text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '='
place:'height'=>60,'width'=>120,'x'=>120,'y'=>210
    command{
	
    if(i==0)
	c=a
	end
    if(i==1) 
	    c=a+b
	    end
    if(i==2) 
	       c=a-b
	    end
	if(i==3)
		 
			  c=a*b
		
		end
	if(i==4)  
		if(b!=0) 
		   c=(a.to_f)/b
		  
		   elsif 
			c="ERROR"
			end
		end
   a=c
   b=0
   i=0
    label1=TkLabel.new(root){
    text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}

TkButton.new(root){
text 'clear'
place:'height'=>60,'width'=>120,'x'=>180,'y'=>150
    command{
   a=0
   b=0
   i=0
    label1=TkLabel.new(root){
    text ""
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}




TkButton.new(root){
text '7'
place:'height'=>60,:'width'=>60,:'x'=>0,:'y'=>30
    command{
    if(i==0)
	    a=a*10+7
	elsif b=b*10+7
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '8'
place:'height'=>60,:'width'=>60,:'x'=>60,:'y'=>30
    command{
    if(i==0)
	    a=a*10+8
	elsif b=b*10+8
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '9'
place:'height'=>60,:'width'=>60,:'x'=>120,:'y'=>30
    command{
    if(i==0)
	    a=a*10+9
	elsif b=b*10+9
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '4'
place:'height'=>60,:'width'=>60,:'x'=>0,:'y'=>90
    command{
    if(i==0)
	    a=a*10+4
	elsif b=b*10+4
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '5'
place:'height'=>60,:'width'=>60,:'x'=>60,:'y'=>90
    command{
    if(i==0)
	    a=a*10+5
	elsif b=b*10+5
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '6'
place:'height'=>60,:'width'=>60,:'x'=>120,:'y'=>90
    command{
    if(i==0)
	    a=a*10+6
	elsif b=b*10+6
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '1'
place:'height'=>60,:'width'=>60,:'x'=>0,:'y'=>150
    command{
    if(i==0)
	    a=a*10+1
	elsif b=b*10+1
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '2'
place:'height'=>60,:'width'=>60,:'x'=>60,:'y'=>150
    command{
    if(i==0)
	    a=a*10+2
	elsif b=b*10+2
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '3'
place:'height'=>60,:'width'=>60,:'x'=>120,:'y'=>150
    command{
    if(i==0)
	    a=a*10+3
	elsif b=b*10+3
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}
TkButton.new(root){
text '0'
place:'height'=>60,:'width'=>120,:'x'=>0,:'y'=>210
    command{
    if(i==0)
	    a=a*10+0
	elsif b=b*10+0
		end
    label1=TkLabel.new(root){
   if(i==0)
	   c=a.to_s
	end
    if(i==1) 
	    c=a.to_s+"+"+b.to_s
	    end
    if(i==2) 
	       c=a.to_s+"-"+b.to_s
	    end
	if(i==3)
		   c=a.to_s+"*"+b.to_s
		end
	if(i==4) 
		   c=a.to_s+"/"+b.to_s 
	   end
	   text c
    place:'height'=>30,:'width'=>300,:'x'=>0,:'y'=>0
    font "arial 20 bold"}
}
}


















Tk.mainloop
