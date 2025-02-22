using SchoolApp.Data;

namespace SchoolApp
{
    public partial class App : Application
    {
        static MusicSchoolDatabase database;

        public static MusicSchoolDatabase Database
        {
            get
            {
                if (database == null)
                {
                    database = new MusicSchoolDatabase(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "MusicSchool.db3"));
                }
                return database;
            }
        }

        public App()
        {
            InitializeComponent();

            //MainPage = new AppShell();

            if (Preferences.ContainsKey("UserEmail"))
            {
                MainPage = new AppShell();
            }
            else
            {
                MainPage = new NavigationPage(new LoginPage());
            }
        }
    }
}
