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
using POS.Classes;

namespace POS
{
    class Methods
    {
        #region Variables
        private readonly SqlOp _objSql = new SqlOp();
        private readonly DataTable _objDt = new DataTable();
        DbFunctions objdb = new DbFunctions();
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
                                Redirect(Cbrowser, val);
                            }
                            else
                            {
                                Redirect(Cbrowser, val);
                            }
                        }
                        else
                        {

                        }
                    }
                    else
                    {
                        MessageBox.Show(rep2.Message);
                    }
                }
            }
            if (Cbrowser.Address == @"file:///D:\POSDATA\DOTNETPOS\dotnet_pos.html")
            {

            }
        }

        public void Redirect(ChromiumWebBrowser Cbrowser, string[] val)
        {
            APIConnection api = new APIConnection();           
            api.MyWebRequest("http://develop.aipsoft.in/common/sync_table/login_action");
            api.MyWebRequest("http://develop.aipsoft.in/common/sync_table/login_action", "POST");
            api.MyWebRequest("http://develop.aipsoft.in/common/sync_table/login_action", "POST", $"username={val[0]}&password={val[1]}");
            string response = api.GetResponse();
            var result =JObject.Parse(response);
            if (result["message"].ToString() == "Login Successfull")
            {
                string logindata = result["data"].ToString();
                string str = logindata;
                var result1 = JsonConvert.DeserializeObject<LoginInfo>(str);
                GetSchema(Cbrowser, result1);
            }
            
            /*if (result != null)
            {
                IDictionary<string, object> dict = (IDictionary<string, object>)result["data"].ToObject(dict); 
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
                }
            }*/
        }

        public  void GetSchema(ChromiumWebBrowser cbrowser,LoginInfo val)
        {
            /*string script = @"var responseobj;
            jQuery.ajax({
            data: {'client_identifier':'" + val.oem_identifier + @"','user_key':'" + val.user_key + @"','user_id':'" + val.user_id + @"','update_number':'" + 0 + @"'},
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
            });";*/

            APIConnection api = new APIConnection();           
            api.MyWebRequest("http://develop.aipsoft.in/common/sync_table/get_table_details");
            api.MyWebRequest("http://develop.aipsoft.in/common/sync_table/get_table_details", "POST");
            api.MyWebRequest("http://develop.aipsoft.in/common/sync_table/get_table_details", "POST", $"client_identifier={val.oem_identifier}&user_key={val.user_key}&user_id={val.user_id}&update_number={0}");
            string response = api.GetResponse();            
            var result = JObject.Parse(response);
            var dt = objdb.GetDataTable(@"SELECT * FROM aip_product_category WHERE STATUS='1' AND show_on_pos='1';");
            if (dt.Rows.Count != 0)
            {
                cbrowser.Load(@"file:///D:\POSDATA\DOTNETPOS\dotnet_pos.html");                
            }
            /*if (cbrowser.CanExecuteJavascriptInMainFrame && script != null)
            {
                JavascriptResponse resp = await cbrowser.EvaluateScriptAsync(script);
                if (resp.Success == true)
                {
                    if (resp.Success.ToString() != null)
                    {
                        //cbrowser.Load(@"file:///C:/Users/userpc/source/repos/POS/POS/POSWEB/index.html");
                    }
                }
                else
                {
                    MessageBox.Show(resp.Message);
                }
            }*/
        }
        
        #endregion
    }
}
