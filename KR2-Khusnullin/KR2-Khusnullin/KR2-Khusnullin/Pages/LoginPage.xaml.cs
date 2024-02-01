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

namespace KR2_Khusnullin.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void BLogin_Click(object sender, RoutedEventArgs e)
        {
            string login = TBLogin.Text;
            string password = TBpassword.Text;

            var loggedSotrudnik = App.DB.Sotrudnik.FirstOrDefault(x => x.Login == login && x.Password == password);
            if(loggedSotrudnik == null)
            {
                MessageBox.Show("Не верный логин или пароль");
                return;
            }
            App.LoggerSotrudnik = loggedSotrudnik;
            if(loggedSotrudnik.idStaff == 1)
            {
                NavigationService.Navigate(new MenuSotrudnikPage());
                MessageBox.Show("Добро пожаловать!");
            }
            if (loggedSotrudnik.idStaff == 2)
            {
                NavigationService.Navigate(new MenuBossPage());
                MessageBox.Show("Добро пожаловать БОСС!");
            }
        }

        private void BRegistration_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegistrationPage());
        }
    }
}
