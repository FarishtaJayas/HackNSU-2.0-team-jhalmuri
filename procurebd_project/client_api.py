import requests

url = "http://127.0.0.1:1234/admin/procurebd_api/views/profileuser_list/"

reponse = requests.get(url)
print(response.text)