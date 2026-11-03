using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteAgain.App_Code;

namespace WebsiteAgain.ContentPages
{
    public partial class Hangman : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsCallback && !IsPostBack)
            {
                string[] words = {"Spiderman", "Calculator", "Extinguisher", "Homework", "Horsemeat", "Addiction", "Wednesday", "Ponytail", "Responsible", "Generous"};

                Random random = new Random();

                secretNum.Value = "0";

                iHateSecrets.Value = "";

                int num = random.Next(0, words.Length);

                secret.Value = words[num];

                SacredWord.Text = new string('*', secret.Value.Length);
            }
        }

        protected void Again(object sender, EventArgs e)
        {
            Debug.WriteLine("a");

            Page.Response.Redirect(Page.Request.Url.ToString(), false);

            Context.ApplicationInstance.CompleteRequest();
        }

        protected void Guess(object sender, EventArgs e)
        {
            Button letter = (Button)sender;

            if (secretNum.Value != "6" && SacredWord.Text.Contains("*"))
            {

                string placeholder = "";

                if (iHateSecrets.Value.Contains(letter.Text.ToLower()))
                {
                    letter.Enabled = false;

                    return;
                }
                else 
                {
                    letter.Enabled = false;

                    iHateSecrets.Value += letter.Text.ToLower();
                }

                if (secret.Value.ToLower().Contains(letter.Text.ToLower()))
                {
                    for (int i = 0; i < secret.Value.Length; i++)
                    {
                        if (letter.Text.ToLower()[0] == secret.Value.ToLower()[i])
                        {

                            placeholder += secret.Value[i];
                        }
                        else
                        {
                            placeholder += SacredWord.Text[i];
                        }
                    }

                    SacredWord.Text = placeholder;

                    Debug.WriteLine(SacredWord.Text);
                }
                else if (Int32.Parse(secretNum.Value) <= 5)
                {
                    secretNum.Value = (Int32.Parse(secretNum.Value) + 1).ToString();

                    string[] images = { "../Images/well.png", "../Images/you.jpg", "../Images/just.jpg", "../Images/messed.jpg", "../Images/up.jpg", "../Images/explosion.jpg"};

                    failed.Attributes["src"] = images[Int32.Parse(secretNum.Value) - 1];

                    WrongCount.Text = "You've guessed wrong " + secretNum.Value + " times.";
                }

            }
            if (!SacredWord.Text.Contains("*"))
            {
                WrongCount.Text = "You Won! Congratulations!";

                SacredWord.Text = secret.Value;

                resetButton.Enabled = true;
            }
            if (secretNum.Value == "6")
            {
                WrongCount.Text = "You Lost. Sucks to suck I guess";

                SacredWord.Text = secret.Value;

                resetButton.Enabled = true;
            }
            
        }
    }
}