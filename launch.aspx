<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="launch.aspx.cs" Inherits="launch" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
      //  navigator.geolocation.getCurrentPosition(
      //function (loc) {
      //    // copy coords to hidden fields
      //    $('#hdnLong').val(loc.coords.longitude);
      //    $('#hdnLat').val(loc.coords.latitude);
      //    $('#hdnAccuracy').val(loc.accuracy);
      //},
      //function () {
      //    alert('unable to get location');
      //  });

      //  perfect
      //  function onPositionUpdate(position) {
      //      var lat = position.coords.latitude;
      //      var lng = position.coords.longitude;
      //      alert("Current position: " + lat + " " + lng);
      //  }

      //  if (navigator.geolocation)
      //      navigator.geolocation.getCurrentPosition(onPositionUpdate);
      //  else
      //      alert("navigator.geolocation is not available");

        //Test
        //function setText(val, e) {
        //    document.getElementById(e).value = val;
        //    document.getElementById()
        //}

        ////function insertText(val, e) {
        ////    document.getElementById(e).value += val;
        ////}

        //var nav = null;

        ////function requestPosition() {
        //    if (nav == null) {
        //        nav = window.navigator;
        //    }
        //    if (nav != null) {
        //        var geoloc = nav.geolocation;
        //        if (geoloc != null) {
        //            geoloc.getCurrentPosition(successCallback);
        //        }
        //        else {
        //            alert("geolocation not supported");
        //        }
        //    }
        //    else {
        //        alert("Navigator not found");
        //    }
        ////}

        //function successCallback(position) {
        //    setText(position.coords.latitude, "latitude");
        //    setText(position.coords.longitude, "longitude");
            
        //}

        var x = 0;
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            //test(); // call other function or display error message 
        }

        function showPosition(position) {
            var lat = position.coords.latitude;
            var lng = position.coords.longitude;
            x += lat;
            test();
            
        }

        function test() {
            alert(x);
        }

        //var y = x;
        //alert(y);
    </script>
    <script type="text/javascript"> 

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <article>

        <p>
            Sorry!
        </p>
        <p>
            Service to be launched.
        </p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><input id="latitude" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><input id="longitude" />
            <input type="button" onclick="requestPosition()" value="Get Latitude and Longitude"  /> 
            <%--<asp:Label ID="hdnAccuracy" runat="server" Text="Label"></asp:Label>--%>
            <%--<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"></asp:Button>--%>
        <p>

        </p>
    </article>
</asp:Content>

