using SchoolApp.Models;

namespace SchoolApp;

public partial class ProgramarePage : ContentPage
{
	public ProgramarePage()
	{
		InitializeComponent();
	}

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        teacherPicker.ItemsSource = await App.Database.GetMembersAsync();
        studentPicker.ItemsSource = await App.Database.GetMembersAsync();
    }

    async void OnSaveButtonClicked(object sender, EventArgs e)
    {
        var programare = new Programare
        {
            TeacherID = ((Member)teacherPicker.SelectedItem).ID,
            StudentID = ((Member)studentPicker.SelectedItem).ID,
            OraProgramarii = dataPicker.Date,
            AdresaProgramarii = adresaEntry.Text
        };

        await App.Database.SaveProgramareAsync(programare);
        await Navigation.PopAsync();
    }
}