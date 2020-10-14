using CONTROLADORMRP;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VISTAMRP
{
    public partial class frmMateriaPrima : Form
    {
        VALIDACIONES va = new VALIDACIONES();
        public frmMateriaPrima()
        {
            InitializeComponent();
        }

        private void eventNombre(object sender, KeyPressEventArgs e)
        {
            va.CamposLetras(e);
        }

        private void eventDescripcion(object sender, KeyPressEventArgs e)
        {
            va.CamposLetras(e);
        }

        private void eventPrecio(object sender, KeyPressEventArgs e)
        {
            va.CampoNumerico(e);
        }

        private void eventMarca(object sender, KeyPressEventArgs e)
        {
            va.Combobox(e);
        }

        private void eventEstado(object sender, KeyPressEventArgs e)
        {
            va.CamposLetras(e);
        }
    }
}
