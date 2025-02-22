namespace SchoolApp;

public partial class AboutPage : ContentPage
{
    public AboutPage()
    {
        InitializeComponent();
    }

    private async void OnLogoutClicked(object sender, EventArgs e)
    {
        bool confirm = await DisplayAlert("Logout", "E?ti sigur cã vrei sã te deconectezi?", "Da", "Nu");

        if (confirm)
        {
            Preferences.Remove("UserEmail");
            Preferences.Remove("UserRole");

            App.Current.MainPage = new NavigationPage(new LoginPage());
        }
    }
}