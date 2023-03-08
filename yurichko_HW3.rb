# Знайти найбільший та найменший елементи масиву
arr = [3, 6, 1, 8, 2, 10]
min = arr.min
max = arr.max
puts "Найменший елемент: #{min}" # виведе "Найменший елемент: 1"
puts "Найбільший елемент: #{max}" # виведе "Найбільший елемент: 10"

arr = [3, 6, 1, 8, 2, 10]
max=arr.sort[-1]
min=arr.sort[0]
print max," ", min

# Обчислити суму елементів масиву
arr = [3, 6, 1, 8, 2, 10]
sum = arr.sum
puts "Сума елементів: #{sum}" # виведе "Сума елементів: 30"

arr = [3, 6, 1, 8, 2, 10]
sum=0
arr.each{|x| sum +=x }
puts sum


# Знайти кількість входжень заданого елементу у масив
arr = [3, 6, 1, 8, 2, 10]
elem = 6
count = arr.count(elem)
puts "Кількість входжень елементу #{elem}: #{count}" # виведе "Кількість входжень елементу 6: 1"

arr = [3, 6, 1, 8, 2, 10, 6]
count=0 
element=6
arr.each{|x| count += 1 if x==element}
puts count

# Видалити всі входження заданого елементу з масиву
arr = [3, 6, 1, 8, 2, 10]
elem = 6
arr.delete(elem)
puts arr.inspect # виведе "[3, 1, 8, 2, 10]"

arr = [3, 6, 1, 8, 2, 10]
elem = 6
arr.each_with_index{|it, ind| arr[ind]=nil if arr[ind]==elem}.compact!
puts arr.inspect


# Перевернути масив
arr = [3, 6, 1, 8, 2, 10]
reversed_arr = arr.reverse
puts reversed_arr.inspect # виведе "[10, 2, 8, 1, 6, 3]"

arr = [3, 6, 1, 8, 2, 10]
reversed_arr=[]
arr.each_with_index{|it, ind| reversed_arr[arr.length-1-ind]=it}
puts reversed_arr.inspect

# Вивести масив у зворотному порядку, не використовуючи метод reverse
arr = [3, 6, 1, 8, 2, 10]
reversed_arr = []
(arr.length - 1).downto(0) { |index| reversed_arr << arr[index] }
puts reversed_arr.inspect # виведе "[10, 2, 8, 1, 6, 3]"

arr = [3, 6, 1, 8, 2, 10]
reversed_arr=[]
i=arr.length-1
while i!=-1
    reversed_arr[i]=arr[i]
    i-=1
end
puts reversed_arr.inspect


# Перевірити, чи містить масив заданий елемент
arr = [3, 6, 1, 8, 2, 10]
elem = 6
if arr.include?(elem)
  puts "Масив містить елемент #{elem}"
else
  puts "Масив не містить елемент #{elem}"
end

arr = [3, 6, 1, 8, 2, 10]
elem = 9
c=0
arr.each{|x| arr.count(elem)!=0? c='' : c='не' }
puts "Елемент #{elem} #{c} міститься в масиві"

# Вивести всі парні елементи масиву
arr = [3, 6, 1, 8, 2, 10]
even_arr = arr.select { |elem| elem.even? }
puts even_arr.inspect # виведе "[6, 8, 2, 10]"

arr = [3, 6, 1, 8, 2, 10]
even_arr=[]
arr.each{|x| even_arr<<x if x%2==0}
puts even_arr.inspect

# Вивести всі непарні елементи масиву
arr = [3, 6, 1, 8, 2, 10]
odd_arr = arr.select { |elem| elem.odd? }
puts odd_arr.inspect # виведе "[3, 1]"

arr = [3, 6, 1, 8, 2, 10]
odd_arr =[]
arr.each{|x| odd_arr<<x if x%2!=0}
puts odd_arr.inspect


# Вивести новий масив, що містить квадрати елементів початкового масиву
arr = [3, 6, 1, 8, 2, 10]
squared_arr = arr.map { |elem| elem ** 2 }
puts squared_arr.inspect # виведе "[9, 36, 1, 64, 4, 100]"

arr = [3, 6, 1, 8, 2, 10]
squared_arr = []
arr.each{|x| squared_arr<<x**2}
puts squared_arr.inspect

# Перxетворити масив в хеш, де ключами будуть елементи, а значеннями їх індекси у масиві
arr = [3, 6, 1, 8, 2, 10]
hash = {}
arr.each_with_index { |elem, index| hash[elem] = index }
puts hash.inspect # виведе "{3=>0, 6=>1, 1=>2, 8=>3, 2=>4, 10=>5}"

arr = [3, 6, 1, 8, 2, 10]
hash = {}
index=0
arr.each { |elem| hash[elem] = index; index+=1 }
puts hash.inspect

# Перетворити масив у новий масив, де кожен елемент - це сума його і попереднього елементів у початковому масиві
arr = [3, 6, 1, 8, 2, 10]
summed_arr = arr.each_with_index.map { |elem, index| index == 0 ? elem : elem + arr[index - 1] }
puts summed_arr.inspect # виведе "[3, 9, 7, 9, 10, 12]"

arr = [3, 6, 1, 8, 2, 10]
summed_arr = []
item=0
while item<arr.length 
    if item==0
        summed_arr<<arr[item]
    else
        summed_arr<<arr[item]+arr[item-1]
    end
    item+=1
end
puts summed_arr.inspect

# Перетворити масив у новий масив, де кожен елемент - це сума його і всіх попередніх елементів у початковому масиві
arr = [3, 6, 1, 8, 2, 10]
summed_arr = []
arr.each_with_index { |elem, index| index == 0 ? summed_arr << elem : summed_arr << elem + summed_arr[index - 1] }
puts summed_arr.inspect # виведе "[3, 9, 10, 18, 20, 30]"

arr = [3, 6, 1, 8, 2, 10]
summed_arr = []
item=0
while item<arr.length 
    if item==0
        summed_arr<<arr[item]
    else
        summed_arr<<arr[item]+summed_arr[item-1]
    end
    item+=1
end
puts summed_arr.inspect

# Вивести індекс першого елементу масиву, який більше за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
result_index = arr.find_index { |elem| elem > number }
puts result_index.inspect # виведе "1"

arr = [3, 6, 1, 8, 2, 10]
item=0
number=5
elem = " "
while item<arr.length and elem == " "
    if number<arr[item]
        elem=item
    end
    item+=1
end
puts elem.inspect

# Вивести елементи масиву, які рівні заданому числу
arr = [3, 6, 1, 8, 2, 10, 6, 1]
number = 6
result_arr = arr.select { |elem| elem == number }
puts result_arr.inspect # виведе "[6, 6]"

arr = [3, 6, 1, 8, 2, 10, 6, 1]
number = 6
result_arr = []
arr.each { |elem| result_arr<<elem if elem == number  }
puts result_arr.inspect 

# Перетворити масив строк у новий масив, де кожна строка записана у зворотному порядку
arr = ["hello", "world", "ruby"]
reversed_arr = arr.map { |str| str.reverse }
puts reversed_arr.inspect # виведе "["olleh", "dlrow", "ybur"]"

arr = ["hello", "world", "ruby"]
reversed_arr = []
arr.each { |str| reversed_arr <<  str.reverse}
puts reversed_arr.inspect

# Вивести суму елементів масиву, які менші за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
sum = arr.select { |elem| elem < number }.sum
puts sum.inspect # виведе "6"

arr = [3, 6, 1, 8, 2, 10]
number = 5
sum_arr = []
arr.each { |elem| sum_arr<<elem if elem < number }
sum = 0
sum_arr.each{|x| sum+=x}
puts sum # виведе "6"

# Вивести кількість унікальних елементів масиву
arr = [1, 2, 3, 4, 3, 2, 1, 5, 6, 5]
unique_count = arr.uniq.count
puts unique_count.inspect # виведе "6"

arr = [1, 2, 3, 4, 3, 2, 1, 5, 6, 5]
unique_count = 0
arr_new=arr
arr_temp=[]
while arr_new.count != 0
    arr_temp[0]=arr_new[0]
    arr_new=arr_new-arr_temp
    unique_count+=1
end
puts unique_count 

# Перетворити масив строк у новий масив, де кожна строка записана в верхньому регістрі
arr = ["hello", "world", "ruby"]
upcased_arr = arr.map(&:upcase)
puts upcased_arr.inspect # виведе "["HELLO", "WORLD", "RUBY"]"

arr = ["hello", "world", "ruby"]
upcased_arr = []
arr.each{|x| upcased_arr<<x.upcase }
puts upcased_arr.inspect

# Знайдіть суму перших 10 натуральних чисел
sum = 0
(1..10).each do |i|
  sum += i
end
puts sum # виведе 55

sum = 0
i=0
while i!=11
  sum += i
  i+=1
end
puts sum

# Виведіть всі числа від 1 до 100, які діляться на 3 без остачі
(1..100).each do |i|
  puts i if i % 3 == 0
end

i=0
while i!=101
  puts i if i % 3 == 0
  i+=1
end

# Знайдіть факторіал числа 5 (5!)
factorial = 1
(1..5).each do |i|
  factorial *= i
end
puts factorial # виведе 120

factorial = 1
i=1
while i!=6
    factorial *= i
    i+=1
end
puts factorial

# Виведіть всі числа Фібоначчі до 100
fibonacci = [1, 1]
while fibonacci.last < 100
  fibonacci << fibonacci.last(2).reduce(:+)
end
puts fibonacci[0..-2] # виведе [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

fibonacci = [1, 1]
while fibonacci[-1] < 100
  fibonacci << fibonacci[-1]+fibonacci[-2]
end
puts fibonacci[0..-2]

# Знайдіть кількість слів у рядку:
string = "The quick brown fox jumps over the lazy dog"
word_count = string.split.length
puts word_count # виведе 9

string = "The quick brown fox jumps over the lazy dog"
word_count = string.count(" ") + 1
puts word_count

# ------ Ітератори ------------

# each - ітератор, який перебирає кожен елемент у колекції
(1..5).each {|i| puts i}

arr = [3, 6, 1, 8, 2, 10]
i=0
while i!=arr.length
    x=arr[i]
    puts x
    i+=1
end

# map - ітератор, який перетворює кожен елемент у колекції та повертає нову колекцію
numbers = [1, 2, 3, 4, 5]
squares = numbers.map {|i| i * i}
puts squares # виведе [1, 4, 9, 16, 25]

numbers = [1, 2, 3, 4, 5]
squares = []
numbers.each {|i| squares<<(i * i)}
puts squares 

# select - ітератор, який вибирає елементи у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select {|i| i % 2 == 0}
puts even_numbers # виведе [2, 4]

numbers = [1, 2, 3, 4, 5]
even_numbers = []
numbers.each {|i| even_numbers<<i if  i % 2 == 0}
puts even_numbers

# reject - ітератор, який відкидає елементи у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
odd_numbers = numbers.reject {|i| i % 2 == 0}
puts odd_numbers # виведе [1, 3, 5]

numbers = [1, 2, 3, 4, 5]
odd_numbers = []
numbers.each {|i| odd_numbers<<i if i % 2 != 0}
puts odd_numbers 

# reduce - ітератор, який об'єднує всі елементи у колекції до одного значення, використовуючи певну операцію
numbers = [1, 2, 3, 4, 5]
sum = numbers.reduce(0) {|acc, i| acc + i}
puts sum # виведе 15

numbers = [1, 2, 3, 4, 5]
sum = 0
numbers.each {|i| sum=0 + sum + i }
puts sum

# each_with_index - ітератор, який перебирає кожен елемент та його індекс у колекції
fruits = ['apple', 'banana', 'cherry']
fruits.each_with_index do |fruit, index|
  puts "#{index+1}. #{fruit}"
end

fruits = ['apple', 'banana', 'cherry']
index=0
while index!=fruits.length
    fruit=fruits[index]
    puts "#{index+1}. #{fruit}"
    index+=1
end

# zip - ітератор, який об'єднує кілька колекцій до однієї колекції
letters = ['a', 'b', 'c']
numbers = [1, 2, 3]
result = letters.zip(numbers)
puts result.inspect # виведе [["a", 1], ["b", 2], ["c", 3]]

letters = ['a', 'b', 'c']
numbers = [1, 2, 3]
result = []
letters.each_with_index{|elem, index| result[index]=[elem, numbers[index]] }
puts result.inspect # виведе [["a", 1], ["b", 2], ["c", 3]]

# all? - ітератор, який перевіряє, чи задовольняють всі елементи у колекції певну умову
numbers = [2, 4, 6, 8, 10]
puts numbers.all? {|i| i.even?} # виведе true

numbers = [2, 4, 6, 8, 10]
a=(1==1)
numbers.each{|i| a=((i.even?)&&a)} 
puts a

# any? - ітератор, який перевіряє, чи задовольняє хоча б один елемент у колекції певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.any? {|i| i > 3} # поверне true, оскільки в колекції є елемент, що більше 3
puts numbers.any? {|i| i > 5} # поверне false, оскільки в колекції немає елементів, що більше 5

numbers = [1, 2, 3, 4, 5]
a=(1!=1)
numbers.each{|i| a=((i>3)||a)} 
puts a
a=(1!=1)
numbers.each{|i| a=((i>5)||a)} 
puts a

# none? - ітератор, який перевіряє, чи не задовольняють жоден елемент у колекції певну умову
numbers = [1, 3, 5, 7, 9]
puts numbers.none? {|i| i.even?} # виведе true

numbers = [1, 3, 5, 7, 9]
a=(1==1)
numbers.each{|i| a=(!(i.even?) && a)} 
puts a

# count - ітератор, який повертає кількість елементів у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.count {|i| i.even?} # виведе 2

numbers = [1, 2, 3, 4, 5]
a=0
numbers.each {|i| a+=1 if si.even?}
puts a

# find - ітератор, який повертає перший елемент у колекції, який задовольняє певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.find {|i| i.even?} # виведе 2

numbers = [1, 2, 3, 4, 5]
a=0
i=0
while a==0
    if numbers[i].even?
        a=numbers[i]
    end    
    i+=1
end    
puts a

# find_all - ітератор, який повертає всі елементи у колекції, які задовольняють певну умову
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.find_all {|i| i.even?}
puts even_numbers.inspect # виведе [2, 4]

numbers = [1, 2, 3, 4, 5]
even_numbers = []
numbers.each {|i| even_numbers<<i if  i.even?}
puts even_numbers.inspect

# partition - ітератор, який розділяє колекцію на дві колекції - одну з елементами, які задовольняють певну умову, та іншу з тими, що не задовольняють
numbers = [1, 2, 3, 4, 5]
even, odd = numbers.partition {|i| i.even?}
puts even.inspect # виведе [2, 4]
puts odd.inspect # виведе [1, 3, 5]

numbers = [1, 2, 3, 4, 5]
even=[] 
odd =[]
numbers.each {|i| i.even? ? (even<<i):(odd<<i)}
puts even.inspect # виведе [2, 4]
puts odd.inspect # виведе [1, 3, 5]


# drop - ітератор, який повертає колекцію, яка містить всі елементи після певного елемента у колекції
numbers = [1, 2, 3, 4, 5]
puts numbers.drop(2).inspect # виведе [3, 4, 5]

numbers = [1, 2, 3, 4, 5]
arr=[]
a=(1!=1)
numbers.each {|i| a==(1==1)?  arr<<i: (a=(1==1)if i==2)  }.inspect
puts arr.inspect

# drop_while - ітератор, який повертає колекцію, яка містить всі елементи у колекції, починаючи від певного елемента, який не задовольняє певну умову:
numbers = [1, 2, 3, 4, 5]
puts numbers.drop_while {|i| i < 3}.inspect # виведе [3, 4, 5]

numbers = [1, 2, 3, 4, 5]
arr=[]
a=(1==1)
numbers.each {|i| a==(1==1) ? ((a=(i < 3);arr<<i) if !(i < 3)) : arr<<i  }.inspect
puts arr.inspect

# take - ітератор, який повертає колекцію, яка містить певну кількість елементів з початку колекції
numbers = [1, 2, 3, 4, 5]
puts numbers.take(2).inspect # виведе [1, 2]

numbers = [1, 2, 3, 4, 5]
arr=[]
t=2
numbers.each_with_index {|x, i| arr<< x if i<t }
puts arr.inspect 

# take_while - ітератор, який повертає колекцію, яка містить всі елементи у колекції до першого елемента, який не задовольняє певну умову
numbers = [1, 2, 3, 4, 5]
puts numbers.take_while {|i| i < 3}.inspect # виведе [1, 2]

numbers = [1, 2, 3, 4, 5]
arr=[]
i=0
while i!=numbers.length && numbers[i]<3
    arr<<numbers[i]
    i+=1
end
puts arr.inspect

# map - ітератор, який створює нову колекцію, використовуючи певну функцію для кожного елементу у початковій колекції:
numbers = [1, 2, 3, 4, 5]
squares = numbers.map {|i| i * i}
puts squares.inspect # виведе [1, 4, 9, 16, 25]

numbers = [1, 2, 3, 4, 5]
squares =[]
numbers.each {|i| squares<<(i * i)}
puts squares.inspect

# inject - ітератор, який обчислює певне значення, використовуючи всі елементи у колекції та певну функцію:
numbers = [1, 2, 3, 4, 5]
sum = numbers.inject {|result, element| result + element}
puts sum # виведе 15

numbers = [1, 2, 3, 4, 5]
sum = 0
numbers.each {|x| sum+=x}
puts sum 

# Знайдіть суму всіх чисел масиву
numbers = [1, 2, 3, 4, 5]
sum = numbers.reduce(0) {|acc, i| acc + i}
puts sum # виведе 15

numbers = [1, 2, 3, 4, 5]
sum = 0
numbers.each {|x| sum+=x}
puts sum 

# Знайдіть найбільше число в масиві
numbers = [4, 2, 7, 1, 9, 5]
max_number = numbers.reduce {|acc, i| acc > i ? acc : i}
puts max_number # виведе 9

numbers = [4, 2, 7, 1, 9, 5]
max_number = numbers.max
puts max_number

# Виведіть всі ключі та значення хешу
hash = {a: 1, b: 2, c: 3}
hash.each do |key, value|
  puts "Key: #{key}, Value: #{value}"
end

hash = {a: 1, b: 2, c: 3}
i=0
arr=[]
k=hash.keys
v=hash.values
while i!=hash.length
    puts "Key: #{k[i]}, Value: #{v[i]}"
    i+=1
end 

# Перетворіть масив чисел у масив рядків
numbers = [1, 2, 3, 4, 5]
string_numbers = numbers.map {|i| i.to_s}
puts string_numbers # виведе ["1", "2", "3", "4", "5"]

numbers = [1, 2, 3, 4, 5]
string_numbers =[]
numbers.each {|i| string_numbers<<"#{i}"}
puts string_numbers.inspect

# Виведіть всі парні числа масиву:
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select {|i| i % 2 == 0}
puts even_numbers # виведе [2, 4]

numbers = [1, 2, 3, 4, 5]
even_numbers=[]
numbers.each{|x| even_numbers<<x if x%2==0}
puts even_numbers.inspect

# Виведіть всі значення хешу, які є парними числами
hash = {a: 1, b: 2, c: 3, d: 4}
even_values = hash.select {|key, value| value % 2 == 0}.values
puts even_values # виведе [2, 4]

hash = {a: 1, b: 2, c: 3, d: 4}
even_values = []
hash.each{|key, value| even_values<<value if value % 2 == 0}
puts even_values.inspect

# ---------- block -----------------
# У Ruby блок - це шматок коду, який може передаватися як аргумент до методу. Блоки використовуються для виконання додаткового коду всередині методу.

# Використання блоку для ітерації по масиву
numbers = [1, 2, 3, 4, 5]
numbers.each do |num|
  puts num
end

# Пошук максимального значення у масиві
def max_value(array)
  max = array[0]
  array.each do |element|
    max = element if element > max
  end
  max
end

numbers = [10, 50, 20, 30, 40]
puts max_value(numbers) #=> 50


# Пошук середнього значення у масиві
def average(array)
  sum = array.reduce(0) { |acc, element| acc + element }
  sum / array.length.to_f
end

numbers = [10, 20, 30, 40, 50]
puts average(numbers) #=> 30.0


# Функція, яка зберігає значення в глобальній змінній
$global_variable = []

def add_to_list(item)
  $global_variable << item
  yield if block_given?
end

add_to_list("item1") #=> $global_variable = ["item1"]
add_to_list("item2") { puts "Added to list!" } #=> $global_variable = ["item1", "item2"]; виведеться "Added to list!"


# Функція, яка повертає значення
def calculate(num1, num2)
  result = yield(num1, num2) if block_given?
  result || "No block given"
end

sum = calculate(10, 20) { |a, b| a + b } #=> 30
puts sum

difference = calculate(10, 20) { |a, b| a - b } #=> -10
puts difference

product = calculate(10, 20) #=> "No block given"
puts product


# Функція, яка дозволяє вибирати між двома блоками
def choose_block(value)
  if value == 1
    yield "First block"
  else
    yield "Second block"
  end
end

choose_block(1) { |message| puts message } #=> "First block"
choose_block(2) { |message| puts message } #=> "Second block"


# Функція, яка повертає масив зі значеннями, перетвореними за допомогою блоку
def map_array(arr)
  result = []
  arr.each { |element| result << yield(element) }
  result
end

arr = [1, 2, 3, 4, 5]
squared = map_array(arr) { |num| num ** 2 } #=> [1, 4, 9, 16, 25]
doubled = map_array(arr) { |num| num * 2 } #=> [2, 4, 6, 8, 10]


# --------- Proc ---------------
# Ruby Proc - це об'єкт, який містить блок коду, який може бути переданий в якості аргументу іншій функції або збережений як змінна, і може бути викликаний в будь-який час.

#  Proc - це передача його в метод фільтрації масиву:

my_proc = Proc.new { |x| x > 5 }
# Фільтрування масиву з використанням Proc
my_array = [2, 4, 6, 8, 10]
filtered_array = my_array.select(&my_proc)
# Виведення результату
puts filtered_array.inspect # повинно вивести [6, 8, 10]



# Інший приклад використання Proc полягає в тому, що він може бути використаний як альтернатива блокові:
# Використання Proc як альтернативи блоку
def my_method(my_proc)
  puts "Before Proc"
  my_proc.call
  puts "After Proc"
end
my_proc = Proc.new { puts "Inside Proc" }
my_method(my_proc)


# Ще один приклад використання Proc полягає в тому, що він може бути використаний для збереження коду, який може бути використаний в багатьох місцях:
# Використання Proc для збереження коду
addition_proc = Proc.new { |x, y| x + y }
multiplication_proc = Proc.new { |x, y| x * y }
# Виклик Proc в різних контекстах
puts addition_proc.call(3, 4) # повинно вивести 7
puts multiplication_proc.call(3, 4) # повинно вивести 12



#  ------------- lambda ------------
# Лямбда-вирази в Ruby - це анонімні функції, які можуть бути передані як аргументи іншим функціям або збережені у змінній для подальшого використання.

# Використання лямбди для збільшення значення змінної
increment = lambda { |x| x + 1 }
increment.call(5) #=> 6


# Використання лямбди для збільшення значення всіх елементів масиву
arr = [1, 2, 3]
increment = lambda { |n| n + 1 }
new_arr = arr.map(&increment) #=> [2, 3, 4]


# Використання лямбди як методу об'єкту
str = "hello world"
reverse_str = str.each_char.map(&:upcase).reverse.join


# Використання лямбди для знаходження мінімального значення
min_num = lambda { |a, b| a < b ? a : b }
min_num.call(5, 3) #=> 3


# Використання лямбди для визначення типу даних
is_string = lambda { |obj| obj.is_a?(String) }
is_string.call("hello") #=> true
is_string.call(123) #=> false


# Використання лямбди для генерації HTML-коду
tag = lambda { |name, content| "<#{name}>#{content}</#{name}>" }
tag.call("h1", "Hello world") #=> "<h1>Hello world</h1>"



