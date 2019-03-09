# comment
def sf():
    return """# comment
def sf():
    return "{1}{1}{0}{1}{1}"
def hello():
    # comment
    s = sf()
    print(s.format(s, '"'))
hello()"""
def hello():
    # comment
    s = sf()
    print(s.format(s, '"'))
hello()
