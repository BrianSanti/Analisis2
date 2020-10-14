namespace VISTAMRP
{
    partial class frmOrdenes
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmOrdenes));
            this.panel1 = new System.Windows.Forms.Panel();
            this.lblCantidad = new System.Windows.Forms.Label();
            this.lblFechaE = new System.Windows.Forms.Label();
            this.lblOrdenesTitulo = new System.Windows.Forms.Label();
            this.lblEncargado = new System.Windows.Forms.Label();
            this.lblEstado = new System.Windows.Forms.Label();
            this.txtFecha = new System.Windows.Forms.TextBox();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.cmbEncargado = new System.Windows.Forms.ComboBox();
            this.dgvOrdenes = new System.Windows.Forms.DataGridView();
            this.btnAyuda = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvOrdenes)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Location = new System.Drawing.Point(97, 24);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1100, 112);
            this.panel1.TabIndex = 1;
            // 
            // lblCantidad
            // 
            this.lblCantidad.AutoSize = true;
            this.lblCantidad.BackColor = System.Drawing.Color.Transparent;
            this.lblCantidad.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCantidad.Location = new System.Drawing.Point(54, 277);
            this.lblCantidad.Name = "lblCantidad";
            this.lblCantidad.Size = new System.Drawing.Size(80, 20);
            this.lblCantidad.TabIndex = 5;
            this.lblCantidad.Text = "Cantidad";
            // 
            // lblFechaE
            // 
            this.lblFechaE.AutoSize = true;
            this.lblFechaE.BackColor = System.Drawing.Color.Transparent;
            this.lblFechaE.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFechaE.Location = new System.Drawing.Point(54, 223);
            this.lblFechaE.Name = "lblFechaE";
            this.lblFechaE.Size = new System.Drawing.Size(133, 20);
            this.lblFechaE.TabIndex = 4;
            this.lblFechaE.Text = "Fecha de Envio ";
            // 
            // lblOrdenesTitulo
            // 
            this.lblOrdenesTitulo.AutoSize = true;
            this.lblOrdenesTitulo.BackColor = System.Drawing.Color.Transparent;
            this.lblOrdenesTitulo.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOrdenesTitulo.Location = new System.Drawing.Point(54, 156);
            this.lblOrdenesTitulo.Name = "lblOrdenesTitulo";
            this.lblOrdenesTitulo.Size = new System.Drawing.Size(89, 22);
            this.lblOrdenesTitulo.TabIndex = 3;
            this.lblOrdenesTitulo.Text = "Ordenes";
            // 
            // lblEncargado
            // 
            this.lblEncargado.AutoSize = true;
            this.lblEncargado.BackColor = System.Drawing.Color.Transparent;
            this.lblEncargado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEncargado.Location = new System.Drawing.Point(54, 381);
            this.lblEncargado.Name = "lblEncargado";
            this.lblEncargado.Size = new System.Drawing.Size(94, 20);
            this.lblEncargado.TabIndex = 7;
            this.lblEncargado.Text = "Encargado";
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado.Location = new System.Drawing.Point(54, 327);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(154, 20);
            this.lblEstado.TabIndex = 6;
            this.lblEstado.Text = "Estado de Compra";
            // 
            // txtFecha
            // 
            this.txtFecha.Location = new System.Drawing.Point(274, 221);
            this.txtFecha.Name = "txtFecha";
            this.txtFecha.Size = new System.Drawing.Size(235, 22);
            this.txtFecha.TabIndex = 12;
            this.txtFecha.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventFecha);
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(274, 275);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(235, 22);
            this.txtCantidad.TabIndex = 13;
            this.txtCantidad.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventCantidad);
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(274, 327);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(235, 22);
            this.txtEstado.TabIndex = 14;
            this.txtEstado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventEstado);
            // 
            // cmbEncargado
            // 
            this.cmbEncargado.FormattingEnabled = true;
            this.cmbEncargado.Location = new System.Drawing.Point(274, 383);
            this.cmbEncargado.Name = "cmbEncargado";
            this.cmbEncargado.Size = new System.Drawing.Size(234, 24);
            this.cmbEncargado.TabIndex = 15;
            this.cmbEncargado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventEncargado);
            // 
            // dgvOrdenes
            // 
            this.dgvOrdenes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvOrdenes.Location = new System.Drawing.Point(570, 166);
            this.dgvOrdenes.Name = "dgvOrdenes";
            this.dgvOrdenes.RowHeadersWidth = 51;
            this.dgvOrdenes.RowTemplate.Height = 24;
            this.dgvOrdenes.Size = new System.Drawing.Size(650, 310);
            this.dgvOrdenes.TabIndex = 16;
            // 
            // btnAyuda
            // 
            this.btnAyuda.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAyuda.Image = ((System.Drawing.Image)(resources.GetObject("btnAyuda.Image")));
            this.btnAyuda.Location = new System.Drawing.Point(1226, 463);
            this.btnAyuda.Name = "btnAyuda";
            this.btnAyuda.Size = new System.Drawing.Size(54, 41);
            this.btnAyuda.TabIndex = 17;
            this.btnAyuda.UseVisualStyleBackColor = true;
            // 
            // frmOrdenes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1282, 503);
            this.Controls.Add(this.btnAyuda);
            this.Controls.Add(this.dgvOrdenes);
            this.Controls.Add(this.cmbEncargado);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtCantidad);
            this.Controls.Add(this.txtFecha);
            this.Controls.Add(this.lblEncargado);
            this.Controls.Add(this.lblEstado);
            this.Controls.Add(this.lblCantidad);
            this.Controls.Add(this.lblFechaE);
            this.Controls.Add(this.lblOrdenesTitulo);
            this.Controls.Add(this.panel1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmOrdenes";
            this.Text = "frmOrdenes";
            this.Load += new System.EventHandler(this.frmOrdenes_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvOrdenes)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblCantidad;
        private System.Windows.Forms.Label lblFechaE;
        private System.Windows.Forms.Label lblOrdenesTitulo;
        private System.Windows.Forms.Label lblEncargado;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.TextBox txtFecha;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.ComboBox cmbEncargado;
        private System.Windows.Forms.DataGridView dgvOrdenes;
        private System.Windows.Forms.Button btnAyuda;
    }
}