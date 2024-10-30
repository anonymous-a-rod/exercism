def translate_word(word):
    if word[0] in 'aeiou' or word[:2] == 'xr' or word[:2] == 'yt':
        return word + 'ay'
    
    for i in range(1, len(word)):
        letter = word[i]
        if word[i - 1:i + 1] == 'qu':
            return word[i + 1:] + word[:i + 1] + 'ay'
        if letter in 'aeiouy':
            return word[i:] + word[:i] + 'ay'

def translate(text):
    return " ".join([translate_word(word) for word in text.split(' ')])

print(translate("apple") == "appleay")
print(translate("pig") == "igpay")
print(translate("rhythm") == "ythmrhay")
print(translate("quick fast run") == "ickquay astfay unray")