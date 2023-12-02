using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
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
    /// Interaction logic for Page3.xaml
    /// </summary>
    public partial class Page3 : Page
    {
        bookstoreEntities db = new bookstoreEntities();
        public Page3()
        {
            InitializeComponent();
            dataGrid.ItemsSource = db.books.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                book books = new book();
                if (txtID.Text != "" && txtPrice.Text != "" && txtTitle.Text != "")
                {
                   
                    int id = int.Parse(txtID.Text);
                    books = db.books.First(x => x.book_id == id);
                    books.title = txtTitle.Text;
                    int Price = int.Parse(txtPrice.Text);
                    books.price = Price;
                    db.books.AddOrUpdate(books);
                    db.SaveChanges();
                    dataGrid.ItemsSource = db.books.ToList();
                }
                else
                {
                    MessageBox.Show("Enter");
                }
            }
            catch
            {
                MessageBox.Show("NOT FOUND!?");
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                book books = new book();
                if (txtID.Text != "")
                {
                   
                    int id = int.Parse(txtID.Text);
                    books = db.books.First(x => x.book_id == id);
                    db.books.Remove(books);
                    db.SaveChanges();
                    dataGrid.ItemsSource = db.books.ToList();
                }
                else
                {
                    MessageBox.Show("Enter");
                }
            }
            catch
            {
                MessageBox.Show("NOT FOUND!?");
            }
        }

        private void btnInsert_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                book books = new book();
                if (txtID.Text != "" && txtPrice.Text != "" && txtTitle.Text != "")
                {
                 
                    int id = int.Parse(txtID.Text);
                    books.book_id = id;
                    books.title = txtTitle.Text;
                    int Price = int.Parse(txtPrice.Text);
                    books.price = Price;
                    db.books.Add(books);
                    db.SaveChanges();
                    dataGrid.ItemsSource = db.books.ToList();
                }
                else
                {
                    MessageBox.Show("ENTER!?");
                }
            }
            catch
            {
                MessageBox.Show("This ID IS actually Inserted");
            }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            book books = new book();
            if (combo.Text!="" && txtSearch.Text != "")
            {
                var item = combo.SelectedItem.ToString().Split(' ').Last();
                if(item == "BookID")
                {
                    int id = int.Parse(txtSearch.Text);
                    dataGrid.ItemsSource = db.books.Where(x=> x.book_id == id).ToList();
                }
                else if (item == "Title")
                {
                    dataGrid.ItemsSource = db.books.Where(x => x.title== txtSearch.Text).ToList();
                }
                else if(item == "Price")
                {
                    int Price = int.Parse(txtSearch.Text);
                    dataGrid.ItemsSource = db.books.Where(x => x.price == Price).ToList();
                }
                else
                {
                    MessageBox.Show("Not Found!?");
                }
            }
            else
            {
                MessageBox.Show("ENTER!??");
            }
        }

        private void btnRefresh_Click(object sender, RoutedEventArgs e)
        {
            txtSearch.Text = " ";
            txtTitle.Text = " ";
            txtID.Text = " ";
            txtPrice.Text = " ";
            dataGrid.ItemsSource = db.books.ToList();
        }
    }
}
