using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp17
{
    /// <summary>
    /// Interaction logic for Page2.xaml
    /// </summary>
    public partial class Page2 : Page
    {
        bookstoreEntities db = new bookstoreEntities();
        public Page2()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (txtID.Text != "" && txtName.Text != "")
                {
                    author auth = new author();
                    int id = int.Parse(txtID.Text);
                    auth = db.authors.First(x => x.author_id == id && x.author_name == txtName.Text);
                    Page3 page = new Page3();
                    this.NavigationService.Navigate(page);
                }
                else
                {
                    MessageBox.Show("ENTER!?");
                }
            }
            catch
            {
                MessageBox.Show("NOT FOUND!?");
            }
        }

        private void btnSignUp_Click(object sender, RoutedEventArgs e)
        {
           SignUp sign = new SignUp();
            this.NavigationService.Navigate(sign);
        }
    }
}
