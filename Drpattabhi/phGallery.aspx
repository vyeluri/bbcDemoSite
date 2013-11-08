<%@ Page Title="Dr.Pattabhi Photo Gallery" Language="C#" MasterPageFile="~/Drpattabhi/pattabhi.Master" AutoEventWireup="true" CodeFile="phGallery.aspx.cs" Inherits="Drpattabhi_phGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <!-- jQuery library -->
	<script type="text/javascript" src="../Drpattabhi/lib/jquery-1.8.2.min.js"></script>
    <!-- mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="../Drpattabhi/lib/jquery.mousewheel-3.0.6.pack.js"></script>

    <!--  fancyBox main JS and CSS files -->
	<script type="text/javascript" src="../Drpattabhi/source/jquery.fancybox.js?v=2.1.3"></script>
	<link rel="stylesheet" type="text/css" href="../Drpattabhi/source/jquery.fancybox.css?v=2.1.2" media="screen" />
        <!--Dummy-->
        <%--<link rel="stylesheet" type="text/css" href="../Drpattabhi/css/fancybox.css" />--%>

        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 *  Simple image gallery. Uses default settings
                 */

                $('.fancybox').fancybox();

                /*
                 *  Different effects
                 */

                //To disable right click
                $(".fancybox")
                    .attr('rel', 'gallery')
                    .fancybox({
                        beforeShow: function () {

                            /* Disable right click */
                            $.fancybox.wrap.bind("contextmenu", function (e) {
                                return false;
                            });
                        }
                    });

                // Change title type, overlay closing speed
                $(".fancybox-effects-a").fancybox({
                    helpers: {
                        title: {
                            type: 'outside'
                        },
                        overlay: {
                            speedOut: 0
                        }
                    }
                });

                // Disable opening and closing animations, change title type
                $(".fancybox-effects-b").fancybox({
                    openEffect: 'none',
                    closeEffect: 'none',

                    helpers: {
                        title: {
                            type: 'over'
                        }
                    }
                });

                // Set custom style, close if clicked, change title type and overlay color
                $(".fancybox-effects-c").fancybox({
                    wrapCSS: 'fancybox-custom',
                    closeClick: true,

                    openEffect: 'none',

                    helpers: {
                        title: {
                            type: 'inside'
                        },
                        overlay: {
                            css: {
                                'background': 'rgba(238,238,238,0.85)'
                            }
                        }
                    }
                });

                // Remove padding, set opening and closing animations, close if clicked and disable overlay
                $(".fancybox-effects-d").fancybox({
                    padding: 0,

                    openEffect: 'elastic',
                    openSpeed: 150,

                    closeEffect: 'elastic',
                    closeSpeed: 150,

                    closeClick: true,

                    helpers: {
                        overlay: null
                    }
                });

                /*
                 *  Button helper. Disable animations, hide close button, change title type and content
                 */

                $('.fancybox-buttons').fancybox({
                    openEffect: 'none',
                    closeEffect: 'none',

                    prevEffect: 'none',
                    nextEffect: 'none',

                    closeBtn: false,

                    helpers: {
                        title: {
                            type: 'inside'
                        },
                        buttons: {}
                    },

                    afterLoad: function () {
                        this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                    }
                });


                /*
                 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
                 */

                $('.fancybox-thumbs').fancybox({
                    prevEffect: 'none',
                    nextEffect: 'none',

                    closeBtn: false,
                    arrows: false,
                    nextClick: true,

                    helpers: {
                        thumbs: {
                            width: 50,
                            height: 50
                        }
                    }
                });

                /*
                 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
                */
                $('.fancybox-media')
                    .attr('rel', 'media-gallery')
                    .fancybox({
                        openEffect: 'none',
                        closeEffect: 'none',
                        prevEffect: 'none',
                        nextEffect: 'none',

                        arrows: false,
                        helpers: {
                            media: {},
                            buttons: {}
                        }
                    });

                /*
                 *  Open manually
                 */

                $("#fancybox-manual-a").click(function () {
                    $.fancybox.open('1_b.jpg');
                });

                $("#fancybox-manual-b").click(function () {
                    $.fancybox.open({
                        href: 'iframe.html',
                        type: 'iframe',
                        padding: 5
                    });
                });

                $("#fancybox-manual-c").click(function () {
                    $.fancybox.open([
                        {
                            href: '1_b.jpg',
                            title: 'My title'
                        }, {
                            href: '2_b.jpg',
                            title: '2nd title'
                        }, {
                            href: '3_b.jpg'
                        }
                    ], {
                        helpers: {
                            thumbs: {
                                width: 75,
                                height: 50
                            }
                        }
                    });
                });


            });

        </script>
        <style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
            
	</style>
</asp:Content>   
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
                <%--<header>
                         <a class="logo" href="../default.aspx"></a>
                     </header>--%>
              <article>
             <%-- <div  class="one">--%>
            <h1>Photo Gallery of Dr.Bhogaraju Pattabhi Sitaramayya</h1>
<p></p>
    <h3>During Independence</h3>
            <div class="fb">
	
		<a class="fancybox" href="../Drpattabhi/img/1_b.jpg" data-fancybox-group="gallery" title="Test. V!"><img src="../Drpattabhi/img/1_s.jpg" alt="" /></a>

		<a class="fancybox" href="../Drpattabhi/img/2_b.jpg" data-fancybox-group="gallery" title="Test. V!"><img src="../Drpattabhi/img/2_s.jpg" alt="" /></a>

		<a class="fancybox" href="../Drpattabhi/img/3_b.jpg" data-fancybox-group="gallery" title="Test. V!"><img src="../Drpattabhi/img/3_s.jpg" alt="" /></a>

		<a class="fancybox" href="../Drpattabhi/img/5_b.jpg" data-fancybox-group="gallery" title="Test. V!"><img src="../Drpattabhi/img/4_s.jpg" alt="" /></a>

     </div>
       
  <%-- </div>--%>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
    <div class="clear">

    </div>
    <footer>

    </footer>
    <div class="clear">

    </div>
    <div class ="footer" style="font-size: small;">
        © 2012 Business BANC of Commerce 
    </div>
    </asp:Content>