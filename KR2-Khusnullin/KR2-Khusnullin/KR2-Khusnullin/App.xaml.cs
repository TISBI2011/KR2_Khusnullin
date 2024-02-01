using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using KR2_Khusnullin.Models;

namespace KR2_Khusnullin
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static KR2_KhusnullinEntities DB = new KR2_KhusnullinEntities();
        public static Sotrudnik LoggerSotrudnik;
    }
}
