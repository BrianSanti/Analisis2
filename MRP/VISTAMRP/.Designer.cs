namespace VISTAMRP
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPrincipal));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.productoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.controlDeCalidadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.controlDeCalidadToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.empleadoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.materiaPrimaToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.ordenesToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.productoToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.empleadosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.inventarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.materiaPrimaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.inventariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ordenesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnlPadre = new System.Windows.Forms.Panel();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.productoToolStripMenuItem,
            this.controlDeCalidadToolStripMenuItem,
            this.empleadosToolStripMenuItem,
            this.inventarioToolStripMenuItem,
            this.materiaPrimaToolStripMenuItem,
            this.ordenesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(932, 28);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // productoToolStripMenuItem
            // 
            this.productoToolStripMenuItem.Name = "productoToolStripMenuItem";
            this.productoToolStripMenuItem.Size = new System.Drawing.Size(59, 24);
            this.productoToolStripMenuItem.Text = "Inicio";
            // 
            // controlDeCalidadToolStripMenuItem
            // 
            this.controlDeCalidadToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.controlDeCalidadToolStripMenuItem1,
            this.empleadoToolStripMenuItem,
            this.materiaPrimaToolStripMenuItem1,
            this.ordenesToolStripMenuItem1,
            this.productoToolStripMenuItem1});
            this.controlDeCalidadToolStripMenuItem.Name = "controlDeCalidadToolStripMenuItem";
            this.controlDeCalidadToolStripMenuItem.Size = new System.Drawing.Size(130, 24);
            this.controlDeCalidadToolStripMenuItem.Text = "Mantenimientos";
            // 
            // controlDeCalidadToolStripMenuItem1
            // 
            this.controlDeCalidadToolStripMenuItem1.Name = "controlDeCalidadToolStripMenuItem1";
            this.controlDeCalidadToolStripMenuItem1.Size = new System.Drawing.Size(224, 26);
            this.controlDeCalidadToolStripMenuItem1.Text = "Control de Calidad";
            this.controlDeCalidadToolStripMenuItem1.Click += new System.EventHandler(this.controlDeCalidadToolStripMenuItem1_Click);
            // 
            // empleadoToolStripMenuItem
            // 
            this.empleadoToolStripMenuItem.Name = "empleadoToolStripMenuItem";
            this.empleadoToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.empleadoToolStripMenuItem.Text = "Empleado ";
            this.empleadoToolStripMenuItem.Click += new System.EventHandler(this.empleadoToolStripMenuItem_Click);
            // 
            // materiaPrimaToolStripMenuItem1
            // 
            this.materiaPrimaToolStripMenuItem1.Name = "materiaPrimaToolStripMenuItem1";
            this.materiaPrimaToolStripMenuItem1.Size = new System.Drawing.Size(224, 26);
            this.materiaPrimaToolStripMenuItem1.Text = "Materia Prima";
            this.materiaPrimaToolStripMenuItem1.Click += new System.EventHandler(this.materiaPrimaToolStripMenuItem1_Click);
            // 
            // ordenesToolStripMenuItem1
            // 
            this.ordenesToolStripMenuItem1.Name = "ordenesToolStripMenuItem1";
            this.ordenesToolStripMenuItem1.Size = new System.Drawing.Size(224, 26);
            this.ordenesToolStripMenuItem1.Text = "Ordenes";
            this.ordenesToolStripMenuItem1.Click += new System.EventHandler(this.ordenesToolStripMenuItem1_Click);
            // 
            // productoToolStripMenuItem1
            // 
            this.productoToolStripMenuItem1.Name = "productoToolStripMenuItem1";
            this.productoToolStripMenuItem1.Size = new System.Drawing.Size(224, 26);
            this.productoToolStripMenuItem1.Text = "Producto";
            this.productoToolStripMenuItem1.Click += new System.EventHandler(this.productoToolStripMenuItem1_Click_1);
            // 
            // empleadosToolStripMenuItem
            // 
            this.empleadosToolStripMenuItem.Name = "empleadosToolStripMenuItem";
            this.empleadosToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.empleadosToolStripMenuItem.Text = "Procesos";
            // 
            // inventarioToolStripMenuItem
            // 
            this.inventarioToolStripMenuItem.Name = "inventarioToolStripMenuItem";
            this.inventarioToolStripMenuItem.Size = new System.Drawing.Size(112, 24);
            this.inventarioToolStripMenuItem.Text = "Herramientas";
           
            // 
            // materiaPrimaToolStripMenuItem
            // 
            this.materiaPrimaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inventariosToolStripMenuItem});
            this.materiaPrimaToolStripMenuItem.Name = "materiaPrimaToolStripMenuItem";
            this.materiaPrimaToolStripMenuItem.Size = new System.Drawing.Size(82, 24);
            this.materiaPrimaToolStripMenuItem.Text = "Reportes";
            // 
            // inventariosToolStripMenuItem
            // 
            this.inventariosToolStripMenuItem.Name = "inventariosToolStripMenuItem";
            this.inventariosToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.inventariosToolStripMenuItem.Text = "Inventarios";
            this.inventariosToolStripMenuItem.Click += new System.EventHandler(this.inventariosToolStripMenuItem_Click);
            // 
            // ordenesToolStripMenuItem
            // 
            this.ordenesToolStripMenuItem.Name = "ordenesToolStripMenuItem";
            this.ordenesToolStripMenuItem.Size = new System.Drawing.Size(65, 24);
            this.ordenesToolStripMenuItem.Text = "Ayuda";
            // 
            // pnlPadre
            // 
            this.pnlPadre.AutoSize = true;
            this.pnlPadre.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pnlPadre.BackgroundImage")));
            this.pnlPadre.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlPadre.Location = new System.Drawing.Point(0, 28);
            this.pnlPadre.Name = "pnlPadre";
            this.pnlPadre.Size = new System.Drawing.Size(932, 475);
            this.pnlPadre.TabIndex = 1;
            this.pnlPadre.Paint += new System.Windows.Forms.PaintEventHandler(this.pnlPadre_Paint);
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(932, 503);
            this.Controls.Add(this.pnlPadre);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmPrincipal";
            this.Text = "frm_prueba";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmPrincipal_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem productoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem controlDeCalidadToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem empleadosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inventarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem materiaPrimaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ordenesToolStripMenuItem;
        private System.Windows.Forms.Panel pnlPadre;
        private System.Windows.Forms.ToolStripMenuItem controlDeCalidadToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem empleadoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem materiaPrimaToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem ordenesToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem productoToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem inventariosToolStripMenuItem;
    }
}