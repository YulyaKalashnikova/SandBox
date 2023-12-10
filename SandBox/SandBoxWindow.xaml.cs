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
using System.Windows.Shapes;
using System.Text.RegularExpressions;
using static System.Net.Mime.MediaTypeNames;
using System.Reflection.Emit;
using System.Threading;
using System.Windows.Threading;
using System.ComponentModel.DataAnnotations;

namespace SandBox
{
    /// <summary>
    /// Interaction logic for SandBoxWindow.xaml
    /// </summary> 

    public partial class SandBoxWindow : Window
    {
        public SandBoxWindow()
        {
            InitializeComponent();

            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void txtPhone_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = !int.TryParse(e.Text, out int result);
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            txtDateNow.Text = DateTime.Now.ToString("dd MMMM yyyy г. HH:mm:ss");
        }

        private void Check()
        {
            if (txtPhone.Text == string.Empty || txtEmail.Text == string.Empty || datePickerDateOfBirth.Text == string.Empty)
            {
                MessageBox.Show("Заполните пустые поля");
                return;
            }

            var birthDay = Convert.ToDateTime(datePickerDateOfBirth.Text);
            var today = DateTime.Today;
            var age = today.Year - birthDay.Year;

            // Дата рождения
            if (Convert.ToDateTime(datePickerDateOfBirth.Text) > DateTime.Today)
            {
                MessageBox.Show("Вы из будущего? Введите верную дату рождения");
            }
            else
            {
                MessageBox.Show($"У вас день рождения: {datePickerDateOfBirth.Text}. Вам {age} год(-а)(-лет)");
            }

            // Номер телефона
            if (Regex.IsMatch(txtPhone.Text.Replace(" ", ""), @"^([7-8]{1})([0-9]{10})$"))
            {
                MessageBox.Show("Номер телефона валиден");
            }
            else
            {
                MessageBox.Show("Номер телефона НЕ валиден");
            }

            // Почта
            /*var email = new EmailAddressAttribute();
            if (email.IsValid(txtEmail.Text))
            {
                MessageBox.Show("Почта валидна");
            }
            else
            {
                MessageBox.Show("Почта НЕ валидна");
            }*/


            if (Regex.IsMatch(txtEmail.Text.Replace(" ", ""), @"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"))
            {
                MessageBox.Show("Почта валидна");
            }
            else
            {
                MessageBox.Show("Почта НЕ валидна");
            }
        }
        private void Check_Click(object sender, RoutedEventArgs e)
        {
            Check();
        }
    }
}
