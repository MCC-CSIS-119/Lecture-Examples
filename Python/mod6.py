import pprint

# 1 
person = {
    "name": "Alice",
    "city": "New York",
    "age": 30,
    "is_student": False,
    "pets" : ["Tilly", "Tweets", "Tyke"]
}

# 2
print(person["name"])
print(person["age"])

# 3
# print(person["friends"])

# 4
print(person.get("name"))
print(person.get("age"))

# 5
print(person.get("friends"))

# 6
print(person.get("friends", "Person has no friends"))

# 7
person["occupation"] = "Teacher"
print(person.get("occupation"))

# 8
pprint.pprint(person)

for key, value in person.items():
    print(key, value)

# 9
my_company = {
    "staff": {
        "President": "Dan Lloyd",
        "Executives": ["Martha Martin", "Bob, Roberts", "Maggie Moo"],
        "Sales": ["Jon Johnson", "Angie Angel", "Edward Scissors"],
        "Engineers": ["Heather Jobs", "Bradley Thomas"],
    },
    "name": "Danco Inc",
    "address": "123 Computer Drive",
    "sales": {
        "2023": 1023350,
        "2024": 1500356,
    }
}

print(my_company["staff"]["President"])

print(my_company.get("staff",{}).get("President"))
