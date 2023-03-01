#1) Дано масив чисел, знайти суму всіх додатніх чисел  масиву не використовуючи цикли:
arr = [4, 0, -5, -1, 7, -1, 3]
d=0
arr.each {|x| d+=x if x>0}
puts d


#2) Задано масив, створити новий масив із даних цього масиву які є рядком.
arr = ["apple", true, "kiwi", 4, 88, "33", false, "undefined", "JS"]
newArr=[]
arr.each {|x| newArr.push(x) if x.class=="".class }
print newArr, "\n"

#3) Задано масив чисел, знайти число яке найбільш часто входить в масив, занести це число в новий масив і видалити всі входження цього числа із поточного масиву.
arr = [4, 5, 2, 1, 6, 5, 3, 5, 2, 5]
count=0
data=0
arr.each{|x| h=arr.count(x); count=h and data=x if h>count}
puts data
d=[data]
arr= arr-d
print arr, "\n"

#4) Знайти в масиві двозначні(10+), трьохзначні(100+) та чоти arr = [1,2,55,3,100, 333, 9999]
arr = [1,2,55,3,100, 333, 9999]
arrNew=[]
min=9
max=100
while max<=10000
    d=[]
    arr.each{|x| d.push(x) if x>min && x<max}
    arrNew.push(d.count)
    max*=10
    min*=10
end
print  arrNew, "\n"

#5) Є масив [5, “Limit”, 12, “a”, “3”, 99, 2, [2, 4, 3, “33”, “a”, “text”], “strong”, “broun”]
arr = [5, "Limit", 12, "a", "3", 99, 2, [2, 4, 3, "33", "a", "text"], "strong", "broun"]
$str=[]
$int=[]
def w (y)
    if y.class == "".class
        $str.push(y)
    elsif y.class == 5.class
        $int.push(y)
    else
        y.each{|x| w(x)}
    end
end
arr.each{|x| w(x)}

print $int,"\n"
print $str,"\n"

#6) Дано рядок із іменами, перетворити їх в масив, в масиві повидаляти лишні пробели, посортувати значення і вивести в новий масив імена які більше 4 символів мають, а в старий масив вивести відсортовані значення і об'єднати їх в рядок
names = "Alex,    Orysia, Misha,    Ira     , Paul"
arr=names.split(" ").join(" ").split(",")
newNames=[]
arr.each_with_index {|x, y| arr[y]=x.split(" ").join("")}.sort!
arr.each{|x| newNames.push(x) if (x.length>4)}
arr.join(" ")
print arr, "\n", newNames
