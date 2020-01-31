using CefSharp;
using CefSharp.WinForms;
using System;
using System.Windows.Forms;

namespace POS
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.WindowState = FormWindowState.Maximized;
            InitBrowser();
            Cbrowser.LoadingStateChanged += Onload;
            Cbrowser.BrowserSettings.WebSecurity = CefState.Disabled;
            Cbrowser.BrowserSettings.FileAccessFromFileUrls = CefState.Enabled;
            Cbrowser.BrowserSettings.UniversalAccessFromFileUrls = CefState.Enabled;
           
        }
        #region Variables
        public ChromiumWebBrowser Cbrowser;
        private readonly Methods __objMeth = new Methods();
        public int comid = 0;
        #endregion

        #region Methods
        public void InitBrowser()
        {
            this.WindowState = FormWindowState.Maximized;
            CefSettings settings = new CefSettings();
            Cef.Initialize(settings);
            Cbrowser = new ChromiumWebBrowser(@"file:///D:/dll/POS/signin.html");
            this.panel1.Controls.Add(Cbrowser);
            
            textBox1.Text = Cbrowser.Address;
           
        }

        private void Onload(object sender, LoadingStateChangedEventArgs args)
        {
            this.Invoke(new MethodInvoker(() =>
             {
                 __objMeth.Login(Cbrowser);                 
             }));            
        }
        #endregion

        #region Events
        private void Exit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void ShowDevTools_Click(object sender, EventArgs e)
        {
            Cbrowser.ShowDevTools();
        }
        

        private void BACK_Click(object sender, EventArgs e)
        {
            Cbrowser.Back();
        }
        #endregion
    }
}
