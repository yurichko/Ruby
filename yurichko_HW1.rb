#- спробувати зробити конкатенацію масиву всередині інтерполяції
a=[1, 15, 5, 9, 5]
b=[2, 8, 545, 4]
puts "Це масив чисел #{a+b}."

#- є рядок із текстом, потрібно визначити кількість входжень літери "а" в рядку. "In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
a="In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
b= a.split("a")
b=b.size
b=b-1
puts b

#- із тексту наведеного вище, створити масив із слів, які повторюються
a="In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
c=b= a.split(" ")
g=[]
e=[]
b.each{|x| e[0]=x; g=g|e}
p=c-g #могло б робити, але неробить через те, що з першого масива видаляються ВСІ елементи, що є однаковими 
      #для першого й другого масиву тобто видаляється н тільки перше слово "we" а й друге й третє і т.д., 
      #без циклу та умови можливо є вирішення, але не з даними знаннями
print p

#- зробити кожне слово в тексті щоб починалось із великої літери
a="In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
b= a.split(" ")
c=""
b.each{|x| c<<"#{x.capitalize} "}
print c

#- зробити із наведеного тексту масив, через розділювач кому.
a="In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
b= a.split(",")
print b

#- перетворити масив в текст, і щоб на місці де була кома стояла трикрамка(...)
a="In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
b= a.split(",")
c=b*"..."
print c

#- згенерувати масив із 10 елементів, і засетити туда сьогоднішню дату.
t="#{Time.now}"
t=t.split(" ")
d=Array.new(10, "#{t[0]}")
puts d

#- використати метод uniq для сгенерованого масиву, після чого викоикати масив(чи зміниться значення масиву?) 
t="#{Time.now}"
t=t.split(" ")
d=Array.new(10, "#{t[0]}")
puts d

d.uniq
puts d
        #масив d не зміниться.
