using CefSharp;
using CefSharp.WinForms;
using System.Data;
using System.Windows.Forms;
using System;

namespace POS
{
    class Methods
    {
        #region Variables
        private readonly SqlOp _objSql = new SqlOp();
        private readonly DataTable _objDt = new DataTable();
        #endregion

        #region Methods
        public async void Login(ChromiumWebBrowser Cbrowser)
        { 
           /* if (Cbrowser.Address == @"file:///D:/dll/POS/register.html")
            {
                string setdata = @"(function Update(){
	                     var arr=[$('#txtcomid').val(),
                                  $('#txtemail').val(),             
                                  $('#txtpwd').val()];
                                  return arr.toString();})();";
                if (Cbrowser.CanExecuteJavascriptInMainFrame && setdata != null)
                {
                    JavascriptResponse rep = await Cbrowser.EvaluateScriptAsync(setdata);
                    if (rep.Success == true)
                    {
                        if (rep.Result.ToString() == ",,")
                        {
                            //MessageBox.Show(@"Welcome...!!!!");
                        }
                        else
                        {
                            string[] name = rep.Result.ToString().Split(',');
                            _objSql.ActiveCheck(name, _objDt);
                            if (_objDt.Rows.Count == 0)
                            {
                                _objSql.InsertData(name);
                                Cbrowser.Load(@"file:///D:/dll/POS/signin.html");
                            }
                            else
                            {
                                Cbrowser.Load(@"file:///D:/dll/POS/register.html");
                            }
                            _objDt.Clear();
                        }
                    }
                    else
                    {
                        MessageBox.Show(rep.Message);
                    }
                }
            }*/
            if (Cbrowser.Address == @"file:///D:/dll/POS/signin.html")
            {
                string logcheck = @"(function Log(){
	                               var arr1=[$('#txtemail').val(),
                                   $('#txtpwd').val()];
                                   var username1 = $('#txtemail').val();
                                   var password1 = $('#txtpwd').val();
                                   alert(password1);
                                   return arr1.toString();
                                   })();";
                if (Cbrowser.CanExecuteJavascriptInMainFrame && logcheck != null)
                {
                    JavascriptResponse rep2 = await Cbrowser.EvaluateScriptAsync(logcheck);
                    if (rep2.Success == true)
                    {
                        if (rep2.Result.ToString() != ",")
                        {
                            string[] val = rep2.Result.ToString().Split(',');
                            _objSql.CheckUser(val, _objDt);
                            if (_objDt.Rows.Count != 0)
                            {
                                // Cbrowser.Load(@"file:///D:/dll/POS/downlode.html");
                                // Cbrowser.Load("http://develop.aipsoft.in/common/sync_table/login_action");
                             
                                Redirect(Cbrowser, val);
                            }
                            else
                            {
                               // MessageBox.Show(@"Couldn't Load Requested Resource......!");
                            }
                        }
                        else
                        {
                               // MessageBox.Show(@"Couldn't Load Requested Resource......!");
                        }
                    }
                    else
                    {
                        MessageBox.Show(rep2.Message);
                    }
                }
            }
        }

        public async void Redirect(ChromiumWebBrowser Cbrowser,string [] val)
        {
            string newscript = @"var responseobj;
            $.ajax({
            data: {'username':'" + val[0] + @"','password':'" + val[1] + @"'},
            method: 'POST',
            url:'http://develop.aipsoft.in/common/sync_table/login_action',
            success: function(response) {
            responseobj = JSON.parse(response);
            console.log(responseobj);
            alert(responseobj);           
            responseobj = 1;
            return response.toString();
            },
            
            error: function(error) {
 
            },
            beforeSend: function() {

            },
            complete: function() {

            }
            });";

            if (Cbrowser.CanExecuteJavascriptInMainFrame && newscript != null)
            {
                JavascriptResponse rep = await Cbrowser.EvaluateScriptAsync(newscript);
                if (rep.Success == true)
                {
                    if (rep.Result.ToString() != null)
                    {
                       
                    }
                }
                else
                {
                    MessageBox.Show(rep.Message);
                }
            }
            else
            {

            }
        }
        #endregion
    }
}
