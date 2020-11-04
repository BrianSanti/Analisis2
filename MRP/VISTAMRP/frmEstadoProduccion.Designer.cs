namespace VISTAMRP
{
    partial class frmEstadoProduccion
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
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.gpbEstadoP = new System.Windows.Forms.GroupBox();
            this.txtCodgio = new System.Windows.Forms.TextBox();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.txtDuracion = new System.Windows.Forms.TextBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.lblNombre = new System.Windows.Forms.Label();
            this.lblEstado = new System.Windows.Forms.Label();
            this.lblDuracion = new System.Windows.Forms.Label();
            this.dgvEstadoP = new System.Windows.Forms.DataGridView();
            this.gpbEstadoP.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEstadoP)).BeginInit();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(13, 13);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 0;
            // 
            // gpbEstadoP
            // 
            this.gpbEstadoP.Controls.Add(this.txtCodgio);
            this.gpbEstadoP.Controls.Add(this.lblCodigo);
            this.gpbEstadoP.Controls.Add(this.txtEstado);
            this.gpbEstadoP.Controls.Add(this.txtDuracion);
            this.gpbEstadoP.Controls.Add(this.txtNombre);
            this.gpbEstadoP.Controls.Add(this.lblNombre);
            this.gpbEstadoP.Controls.Add(this.lblEstado);
            this.gpbEstadoP.Controls.Add(this.lblDuracion);
            this.gpbEstadoP.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gpbEstadoP.Location = new System.Drawing.Point(46, 172);
            this.gpbEstadoP.Name = "gpbEstadoP";
            this.gpbEstadoP.Size = new System.Drawing.Size(514, 250);
            this.gpbEstadoP.TabIndex = 9;
            this.gpbEstadoP.TabStop = false;
            this.gpbEstadoP.Text = "Estado Produccion";
            // 
            // txtCodgio
            // 
            this.txtCodgio.Location = new System.Drawing.Point(199, 53);
            this.txtCodgio.Name = "txtCodgio";
            this.txtCodgio.Size = new System.Drawing.Size(276, 31);
            this.txtCodgio.TabIndex = 14;
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.BackColor = System.Drawing.Color.Transparent;
            this.lblCodigo.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigo.Location = new System.Drawing.Point(32, 58);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(124, 20);
            this.lblCodigo.TabIndex = 13;
            this.lblCodigo.Text = "Codigo Estado";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(199, 185);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(276, 31);
            this.txtEstado.TabIndex = 11;
            // 
            // txtDuracion
            // 
            this.txtDuracion.Location = new System.Drawing.Point(199, 140);
            this.txtDuracion.Name = "txtDuracion";
            this.txtDuracion.Size = new System.Drawing.Size(276, 31);
            this.txtDuracion.TabIndex = 10;
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(199, 97);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(276, 31);
            this.txtNombre.TabIndex = 9;
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.BackColor = System.Drawing.Color.Transparent;
            this.lblNombre.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombre.Location = new System.Drawing.Point(32, 102);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(130, 20);
            this.lblNombre.TabIndex = 5;
            this.lblNombre.Text = "Nombre Estado";
            // 
            // lblEstado
            // 
            this.lblEstado.AutoSize = true;
            this.lblEstado.BackColor = System.Drawing.Color.Transparent;
            this.lblEstado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEstado.Location = new System.Drawing.Point(32, 190);
            this.lblEstado.Name = "lblEstado";
            this.lblEstado.Size = new System.Drawing.Size(62, 20);
            this.lblEstado.TabIndex = 7;
            this.lblEstado.Text = "Estado";
            // 
            // lblDuracion
            // 
            this.lblDuracion.AutoSize = true;
            this.lblDuracion.BackColor = System.Drawing.Color.Transparent;
            this.lblDuracion.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDuracion.Location = new System.Drawing.Point(32, 145);
            this.lblDuracion.Name = "lblDuracion";
            this.lblDuracion.Size = new System.Drawing.Size(81, 20);
            this.lblDuracion.TabIndex = 6;
            this.lblDuracion.Text = "Duracion";
            // 
            // dgvEstadoP
            // 
            this.dgvEstadoP.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEstadoP.Location = new System.Drawing.Point(613, 149);
            this.dgvEstadoP.Name = "dgvEstadoP";
            this.dgvEstadoP.RowHeadersWidth = 51;
            this.dgvEstadoP.RowTemplate.Height = 24;
            this.dgvEstadoP.Size = new System.Drawing.Size(799, 327);
            this.dgvEstadoP.TabIndex = 10;
            // 
            // frmEstadoProduccion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1442, 503);
            this.Controls.Add(this.dgvEstadoP);
            this.Controls.Add(this.gpbEstadoP);
            this.Controls.Add(this.navegador1);
            this.Name = "frmEstadoProduccion";
            this.Text = "frmEstadoProduccion";
            this.gpbEstadoP.ResumeLayout(false);
            this.gpbEstadoP.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEstadoP)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.GroupBox gpbEstadoP;
        private System.Windows.Forms.TextBox txtCodgio;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.TextBox txtDuracion;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Label lblEstado;
        private System.Windows.Forms.Label lblDuracion;
        private System.Windows.Forms.DataGridView dgvEstadoP;
    }
}