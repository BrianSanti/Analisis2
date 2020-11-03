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
    public partial class frmPrincipal : Form
    {
        public frmPrincipal()
        {
            InitializeComponent();
        }

        public void AddFormulario(Form f) {

            f.TopLevel = false;
            this.pnlPadre.Controls.Add(f);
            f.Show();   
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void inventariadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmInve usu = new frmInve();
            AddFormulario(usu);

        }

        private void productoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            frmProducto usu = new frmProducto();
            AddFormulario(usu);

        }

        private void pnlPadre_Paint(object sender, PaintEventArgs e)
        {

        }

        private void controlDeCalidadToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            frmControlCalidad usu = new frmControlCalidad();
            AddFormulario(usu);
        }

        private void empleadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmEmpleadoh usu = new frmEmpleadoh();
            AddFormulario(usu);
        }

        private void materiaPrimaToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            frmMateriaPrima usu = new frmMateriaPrima();
            AddFormulario(usu);
        }

        private void ordenesToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            frmOrdenes usu = new frmOrdenes();
            AddFormulario(usu);
        }

        private void productoToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            frmProducto usu = new frmProducto();
            AddFormulario(usu);
        }

        private void inventariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmInventario usu = new frmInventario();
            AddFormulario(usu);

        }
    }
}
