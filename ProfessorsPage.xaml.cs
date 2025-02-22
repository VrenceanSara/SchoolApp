using SchoolApp.Models;

namespace SchoolApp;

public partial class ProfessorsPage : ContentPage
{
	public ProfessorsPage()
	{
		InitializeComponent();
	}

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        string userRole = Preferences.Get("UserRole", "User");

        if (userRole != "Admin")
        {
            await DisplayAlert("Restric?ie", "Nu ai permisiunea de a accesa aceastã paginã!", "OK");
            await Navigation.PopAsync();
            return;
        }

        listView.ItemsSource = await App.Database.GetProfessorsAsync();
    }

    async void OnProfessorSelected(object sender, SelectedItemChangedEventArgs e)
    {
        if (e.SelectedItem == null)
            return;

        var selectedProfessor = e.SelectedItem as Member;
        await DisplayAlert("Profesor", $"Nume: {selectedProfessor.Nume}\nEmail: {selectedProfessor.Email}", "OK");

        listView.SelectedItem = null;
    }
}