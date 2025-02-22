using SchoolApp.Models;

namespace SchoolApp;

public partial class MembersPage : ContentPage
{
	public MembersPage()
	{
		InitializeComponent();
	}

    async void OnMemberSelected(object sender, SelectedItemChangedEventArgs e)
    {
        if (e.SelectedItem == null)
            return;

        var selectedMember = e.SelectedItem as Member;
        await Navigation.PushAsync(new MemberDetailsPage
        {
            BindingContext = selectedMember
        });

        membersListView.SelectedItem = null;
    }

}