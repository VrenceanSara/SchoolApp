namespace SchoolApp;

public partial class LoginPage : ContentPage
{
	public LoginPage()
	{
		InitializeComponent();
	}

    async void OnLoginClicked(object sender, EventArgs e)
    {
        var user = await App.Database.LoginUserAsync(emailEntry.Text, passwordEntry.Text);

        if (user != null)
        {
            Preferences.Set("UserEmail", user.Email);
            Preferences.Set("UserRole", user.Role);

            App.Current.MainPage = new AppShell(); // Dup� login, schimb� pagina principal�
        }
        else
        {
            await DisplayAlert("Eroare", "Email sau parol� incorect�", "OK");
        }
    }

    async void OnRegisterClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new RegisterPage());
    }
}