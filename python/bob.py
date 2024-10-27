def response(hey_bob):
    hey_bob = hey_bob.strip()
    is_question = hey_bob.endswith("?")
    is_upper = hey_bob.isupper()
    if is_question and is_upper: return "Calm down, I know what I'm doing!"
    if is_question: return "Sure."
    if is_upper: return "Whoa, chill out!"
    if not hey_bob: return "Fine. Be that way!"
    return "Whatever."