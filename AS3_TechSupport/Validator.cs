using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AS3_TechSupport {
    public static class Validator {
        //==================//
        //Validation Methods//
        //==================//

        public static bool IsFilled(TextBox textBox) {
            if (textBox.Text == "") {
                textBox.BackColor = Color.Salmon;
                return false;
            }
            textBox.BackColor = Color.Empty;
            return true;
        }

        public static bool IsDecimal(TextBox textBox) {
            decimal output;

            if (!Decimal.TryParse(textBox.Text, out output)) {
                textBox.BackColor = Color.Salmon;
                return false;
            }
            textBox.BackColor = Color.Empty;
            return true;
        }


        //===============//
        //Utility Methods//
        //===============//

        public static bool CheckFields(TextBox[] textBoxes) {
            bool status = true;

            foreach (TextBox textBox in textBoxes) {
                if (!IsFilled(textBox)) {
                    status = false;
                }
            }

            return status;
        }
    }
}