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
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        Sotrudnik contextSotrudnik;
        public RegistrationPage()
        {
            InitializeComponent();
            CBStaff.ItemsSource = App.DB.Staff.ToList();
            contextSotrudnik = new Sotrudnik();
            DataContext = contextSotrudnik;
        }

        private void BRegistration_Click(object sender, RoutedEventArgs e)
        {
            App.DB.Sotrudnik.Add(contextSotrudnik);
            App.DB.SaveChanges();
            NavigationService.GoBack();

        }

        private void BBackRegistraion_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
