<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>test</title>
    <script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="js/all.js" type="text/javascript"></script>    

    <script type="text/javascript">
        $("document").ready(function () {
            // Initialize the SDK upon load
            FB.init({
                appId: '585136464835007', // App ID
                channelUrl: '//' + window.location.hostname + '/channel', // Path to your Channel File
                scope: 'id,name,gender,user_birthday,email', // This to get the user details back from Facebook
                status: true, // check login status
                cookie: true, // enable cookies to allow the server to access the session
                xfbml: true  // parse XFBML
            });
            // listen for and handle auth.statusChange events
            FB.Event.subscribe('auth.statusChange', OnLogin);
        });

        // This method will be called after the user login into facebook.
        function OnLogin(response) {
            if (response.authResponse) {
                FB.api('/me?fields=id,name,gender,email,birthday', LoadValues);
            }
        }

        //This method will load the values to the labels
        function LoadValues(me) {
            if (me.name) {
                document.getElementById('displayname').innerHTML = me.name;
                document.getElementById('FBId').innerHTML = me.id;
                document.getElementById('DisplayEmail').innerHTML = me.email;
                document.getElementById('Gender').innerHTML = me.gender;
                document.getElementById('DOB').innerHTML = me.birthday;
                document.getElementById('auth-loggedin').style.display = 'block';
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div id="fb-root"></div> <!-- This initializes the FB controls-->   
    <div class="fb-login-button" autologoutlink="true" scope="user_birthday,email" >
      Login with Facebook
     </div> <!-- FB Login Button -->   
    <!-- Details --> 
    <div id="auth-status">    
    <div id="auth-loggedin" style="display: none">
        Hi, <span id="displayname"></span><br/>
        Your Facebook ID : <span id="FBId"></span><br/>
        Your Email : <span id="DisplayEmail"></span><br/>
        Your Sex:, <span id="Gender"></span><br/>
        Your Date of Birth :, <span id="DOB"></span><br/>        
    </div>
    </div>
    </div>
    </form>
</body>
</html>
