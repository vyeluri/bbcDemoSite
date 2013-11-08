using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MenuDemos
{
    public partial class dev : System.Web.UI.Page
    {
        public String x;
        void NavigationMenu_MenuItemClick(Object sender, MenuEventArgs e)
        {
            if (e.Item.Value != null)
            {
                x = e.Item.Value;
                
            }
            
             
        }


        
        MenuItem lastClickedTab = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}
