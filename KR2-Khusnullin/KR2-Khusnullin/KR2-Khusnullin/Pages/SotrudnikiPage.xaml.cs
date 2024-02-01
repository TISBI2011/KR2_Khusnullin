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
using KR2_Khusnullin.Models;

namespace KR2_Khusnullin.Pages
{
    /// <summary>
    /// Логика взаимодействия для SotrudnikiPage.xaml
    /// </summary>
    public partial class SotrudnikiPage : Page
    {
        
        public SotrudnikiPage()
        {
            InitializeComponent();
            
        }

        private void BAddProduct_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddSotrudnikPage());
        }


        private void BBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void BRemoveSotrudnik_Click(object sender, RoutedEventArgs e)
        {
            var selectedSotrudnik = DGSotrudnik.SelectedItem as Sotrudnik;
            if(selectedSotrudnik == null)
            {
                MessageBox.Show("Выберите сотрудника");
                return;
            }
            App.DB.Sotrudnik.Remove(selectedSotrudnik);
            App.DB.SaveChanges();
            DGSotrudnik.ItemsSource = App.DB.Sotrudnik.ToList();
        }

        private void BEditSotrudnik_Click(object sender, RoutedEventArgs e)
        {
            var selectedSotrudnik = DGSotrudnik.SelectedItem as Sotrudnik;
            if (selectedSotrudnik == null)
            {
                MessageBox.Show("Выберите сотрудника");
                return;
            }
            NavigationService.Navigate(new AddSotrudnikPage(selectedSotrudnik)));
        }
    }
}
