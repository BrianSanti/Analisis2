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

        private void frmPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void productoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmProducto usu = new frmProducto();
            usu.Show();
            
        }

        private void controlDeCalidadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmControlCalidad usu = new frmControlCalidad();
            usu.Show();
            
        }

        private void empleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmEmpleadoh usu = new frmEmpleadoh();
            usu.Show();
            
        }

        private void inventarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmInventario usu = new frmInventario();
            usu.Show();
            
        }

        private void inventariadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmInve usu = new frmInve();
            usu.Show();
            
        }

        private void materiaPrimaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmMateriaPrima usu = new frmMateriaPrima();
            usu.Show();
            
        }

        private void ordenesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmOrdenes usu = new frmOrdenes();
            usu.Show();
            
        }

        private void productoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            frmProducto usu = new frmProducto();
            usu.Show();
            
        }
    }
}
