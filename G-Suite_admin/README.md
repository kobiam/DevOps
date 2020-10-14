# Get data from G-suite API

<h2>Create virtualenv</h2>
virtualenv env

<h2>Install Packages</h2>
pip install google-auth google_auth_oauthlib

<h2>Create quickstart project at the developers console</h2>

<h2>Create Credentials</h2>
Credentials > OAuth client ID > choose Web application > Add Authorized redirect URIs > http://localhost:8080 > Download JSON > save it as client_secret.json > put it in the same directory as your code

<h2>Enable Admin SDK</h2>
make sure to enable admin SDK
https://console.developers.google.com/apis/api/admin.googleapis.com

<h2>Allow G Suite admin - unrestricted</h2>
https://admin.google.com/ac/owl/list?tab=services


<h3>Running this API call will open a web browser to login</h3>