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
    /// Логика взаимодействия для MenuBossPage.xaml
    /// </summary>
    public partial class MenuBossPage : Page
    {
        public MenuBossPage()
        {
            InitializeComponent();
        }

        private void BCreatPage_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BSotrudniki_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new SotrudnikiPage);
        }
    }
}
