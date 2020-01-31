using CefSharp;
using CefSharp.WinForms;
using System.Data;
using System.Windows.Forms;
using System;
using System.Dynamic;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Text.RegularExpressions;

namespace POS
{
    class Methods
    {
        #region Variables
        private readonly SqlOp _objSql = new SqlOp();
        private readonly DataTable _objDt = new DataTable();
        Object obj = new object();
        Regex regex = new Regex(@"[^0-9a-zA-Z]+//:,");
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
                                   if(password1!=null){
                                   alert(password1);
                                    }
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
                                Redirect(Cbrowser, val);
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

        public async void Redirect(ChromiumWebBrowser Cbrowser, string[] val)
        {
            try
            {
                string newscript = @"var responseobj;
            $.ajax({
            data: {'username':'" + val[0] + @"','password':'" + val[1] + @"'},
            method: 'POST',
            
            url:'http://develop.aipsoft.in/common/sync_table/login_action',
            success: function(response) {
            responseobj = JSON.parse(response);
            console.log(responseobj);
            if(responseobj.status=='1'){                
                var a=[responseobj.data]; 
                console.log(a);
                alert(JSON.stringify(a));
                return JSON.stringify(a);                
            }        
            else
            {
              alert(responseobj.message);
            }
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
                        if (rep.Result != null)
                        {
                            IDictionary<string, object> dict = (IDictionary<string, object>)rep.Result;
                            IEnumerable<object> values = dict.Select(m => m.Value);
                            var txt = values.ToList();
                            if (txt.Count != 0)
                            {
                                object msg = txt.ElementAt(13);
                                string[] arr = ((IEnumerable)txt).Cast<object>()
                                     .Select(x => x.ToString())
                                     .ToArray();
                                string data = arr[13].ToString();
                                string[] newa = data.Split(',', ':');
                                string oemid = newa[6].ToString().Replace(@"""", "");
                                string userid = newa[8].ToString().Replace(@"""", "");
                                string userkey = newa[10].ToString().Replace(@"""", "");
                                string[] passData = { oemid, userid, userkey, "0" };
                                GetSchema(Cbrowser, passData);
                            }
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
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        
        public async void GetSchema(ChromiumWebBrowser cbrowser,string[] val)
        {
            string script = @"var responseobj;
            jQuery.ajax({
            data: {'client_identifier':'" + val[0] + @"','user_key':'" + val[2] + @"','user_id':'" + val[1] + @"','update_number':'" + val[3] + @"'},
            method: 'POST',
            url:'http://develop.aipsoft.in/common/sync_table/get_table_details',
            success: function(response) {

             console.log(response);

            },
            error: function(error) {
 
            },
            beforeSend: function() {

            },
            complete: function() {

            }
            });";
            if(cbrowser.CanExecuteJavascriptInMainFrame && script != null)
            {
                JavascriptResponse resp = await cbrowser.EvaluateScriptAsync(script);
                if (resp.Success == true)
                {
                    if (resp.Success.ToString() != null)
                    {
                        cbrowser.Load(@"file:///C:/Users/userpc/source/repos/POS/POS/downlode.html");
                    }
                }
                else
                {
                    MessageBox.Show(resp.Message);
                }
            }
        }
        #endregion
    }
}
