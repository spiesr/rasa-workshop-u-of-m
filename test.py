import requests

r1 = requests.get('http://localhost:5005/conversations/default/respond', params={'query':'Hi!'})
parsed1 = eval(r1.text)
print(parsed1[0]['text'])

r2 = requests.get('http://localhost:5005/conversations/default/respond', params={'query':'Thank you'})
parsed2 = eval(r2.text)
print(parsed2[0]['text'])

r3 = requests.get('http://localhost:5005/conversations/default/respond', params={'query':'I want you to do something'})
parsed3 = eval(r3.text)
print(parsed3[0]['text'])

r4 = requests.get('http://localhost:5005/conversations/default/respond', params={'query':'Goodbye'})
parsed4 = eval(r4.text)
print(parsed4[0]['text'])
