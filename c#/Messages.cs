using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace MLClass
{
    public class Class1
    {
      public bool IsAdmin {get; set;}
      public bool IsOnDuty {get; set;}


      public Messages()
      {
        IsAdmin = true;
        IsOnDuty = true;

      }
      
      public void SendMsg()
      {
        System.Diagnostic.Process.Start("MSG","Administrator"+" "+ "Hello");
        MessageBox.Show("IsAdmin = " + IsAdmin.ToString());
      }





      
    }
}
