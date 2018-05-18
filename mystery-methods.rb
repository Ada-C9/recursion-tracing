def mystery1(n)
  puts n
  if n == 1
    return n
  else
    return n + mystery1(n-1)
  end
end

# Q1: mystery1(5) => 15
# Q2: mystery1(10) => 155
# Q3: mystery1(0) => inifinite loop / stack overflow error
# Time Complexity: O(n)
# Space Complexity: O(n)

def mystery2(n)
  if n < 10
    return n
  else
    return (n%10) + mystery2(n/10)
  end
end

# Q1: mystery2(123) => 6
# Q2: mystery2(9005) => 14
# Q3: mystery2(-123) => -123
# Time Complexity: O(n)
# Space Complexity: O(n)
# Condition: return n if n > -10  || n < 10

def mystery3(n)
  if n == 0
    return 100
  elsif n == -1
    return 200
  end
  if n%2 == 0
    return mystery3(n/2)
  else
    return mystery3(n-1)
  end
end

# Q1: mystery3(1) => 100
# Q2: mystery3(13) => 100
# Q3: mystery3(-6) => 200
# Time Complexity: O(n)
# Space Complexity: O(n)


def mystery4(b,e)
  if e == 0
    return 1
  else
    return b * mystery4(b,e-1)
  end
end

# Q1: mystery4(10, 2) => 100
# Q2: mystery4(4, 3) => 64
# Q3: mystery4(5, 0) => 1
# Time Complexity: O(e)
# Space Complexity: O(e)

def mystery5(s)
  if s.length == 0
    return ""
  else
    return "*" + mystery5(s[1..-1])
  end
end

# Q1: mystery5('hi') => '**'
# Q1: mystery5('') => ''
# Q1: mystery5('Hi, there!') => '**********'
# Time Complexity: 0(s.length)
# Space Complexity: O(s.length)
# return '*' + mystery5(s[1..-1]) if s[0] is a letter

def mystery6(s)
  if s == nil || s.length == 0
    return ""
  else
    space = 0
    until space >= s.length || s[space] == " "
      space += 1
    end
    return mystery6(s[(space+1)..-1]) + " " + s[0...space]
  end
end


# Q1: mystery6('goodnight moon') => ' moon goodnight'
# Q2: mystery6('Ada Developer Academy') => ' Academy Developer Ada'
# Q3: mystery6('Hi, there!') => ' there! Hi,'
# Time Complexity: O(n) - n is the lenggth of s
# Space Complexity: O(n) - n is the lenggth of s
# Added fun:


def mystery7(word)
  if word.length < 2
    return true
  elsif word[0] != word[-1]
    return false
  else
    return mystery7(word[1..-2])
  end
end

# Q1: mystery7('cupcake') => false
# Q2: mystery7('detected') => false
# Q3: mystery7('eye') => true
# Time Complexity: O(n) - n is the length of word
# Space Complexity: O(n) - n is the length of word
