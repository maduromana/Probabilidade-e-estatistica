source('https://t.ly/6R0IK') # carregar prova
avaliacao3(2408830)


#ex 1) 
t.test(ex1,conf.level = 0.9425)

#ex2) 
prop.test(sum(ex2), length(ex2), conf.level = 0.93)

#ex3) 
# H0: média = 21.125
# H1: média != 21.125
t.test(ex3,alternative ="two.side", mu = 21.125, conf.level = 0.93625) 

#ex 4)
# H0: p = 0.36875 
# H1: p != 0.36875
prop.test(sum(ex4),length(ex4),alternative ='two.side', p = 0.36875, conf.level = 0.94875) 

#ex 5) 
#H0: X-Y = 0
# H1: X-Y != 0
t.test(ex5x, ex5y,alternative ='two.side', conf.level = 0.92375 )

#ex 6) 
#H0: antes - depois = 0
#H1: antes - depois != 0 
t.test(ex6antes,ex6depois,alternative ='two.side', conf.level =0.9175, paired = T)
