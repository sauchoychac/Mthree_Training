import string  # import the string module
s = """Imagine a vast sheet of paper on which straight Lines, Triangles, Squares, Pentagons, Hexagons, and other figures, instead of remaining fixed in their places, move freely about, on or in the surface, but without the power of rising above or sinking below it, very much like shadows - only hard and with luminous edges - and you will then have a pretty correct notion of my country and countrymen. Alas, a few years ago, I should have said "my universe": but now my mind has been opened to higher views of things."""

# do not change any code above this line
# your code here
# Sauchoy Chac 08/05/2022

# Step 1
s_lower = s.lower()

# Step 2
words = list()  # do not delete. this list must contain the list of words.

# your code goes here
words = str.split(s_lower, " ")

print(words)  # do not delete

# do not write any code past here


# Step 3
print(len(words))


# Step 4
distinctWords = []
for word in words:
    if word not in distinctWords:
        distinctWords.append(word)


# printing number of distinct words
print(len(distinctWords))


# Step 5

# we define w as a list of words
w = ["haythem", "is", "eating", "tacos.", "haythem", "loves", "tacos", "", ":"]

# we define an empty dictionary that will hold the token/frequency key-value pair
# key:word, value:int that corresponds to the frequency of occurrence
freq_occur = dict()

# your code goes here
for word in w:
    if word not in freq_occur:
        freq_occur[word] = 1
    else:
        freq_occur[word] += 1

print(freq_occur)

# =================================================================================

word_freq = dict()

# your code goes here
for word in words:
    if word not in word_freq:
        word_freq[word] = 1
    else:
        word_freq[word] += 1

print(word_freq)

# Step 6

# use the built-in string.punctuation method to create a list of all punctuation marks
punctuation_list = list(string.punctuation)
# display the punctuation_list
print(punctuation_list)

w = ["haythem!", "is", "eating", "tacos.",
     ".haythem", "loves", "tacos", "", ":"]
w_clean = list()
# do not change the code above this line.

# your code goes here
for word in words:
    if word != "":
        if word not in punctuation_list:
            if word[-1] in punctuation_list:
                word = word.replace(word[-1], "")
            if word[0] in punctuation_list:
                word = word.replace(word[0], "")

            w_clean.append(word)

print(w_clean)
print(len(w_clean))


# Step 7
print("Step 7: ")
s = """Imagine a vast sheet of paper on which straight Lines, Triangles, Squares, Pentagons, Hexagons, and other figures, instead of remaining fixed in their places, move freely about, on or in the surface, but without the power of rising above or sinking below it, very much like shadows - only hard and with luminous edges - and you will then have a pretty correct notion of my country and countrymen. Alas, a few years ago, I should have said "my universe": but now my mind has been opened to higher views of things."""

s_lower = s.lower()
words = list()
words = str.split(s_lower, " ")

w_clean = list()

for word in words:
    if word != "":
        if word not in punctuation_list:
            if word[-1] in punctuation_list:
                word = word.replace(word[-1], "")
            if word[0] in punctuation_list:
                word = word.replace(word[0], "")

            w_clean.append(word)

noPunctWordCount = len(w_clean)

word_freq = dict()
for word in w_clean:
    if word not in word_freq:
        word_freq[word] = 1
    else:
        word_freq[word] += 1


print(word_freq)
print(len(word_freq))
