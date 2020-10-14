namespace VISTAMRP
{
    partial class frmControlCalidad
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
            this.lblOrden = new System.Windows.Forms.Label();
            this.lblControltitulo = new System.Windows.Forms.Label();
            this.lblInventario = new System.Windows.Forms.Label();
            this.lblEmpleado = new System.Windows.Forms.Label();
            this.lblResultado = new System.Windows.Forms.Label();
            this.cmbOrden = new System.Windows.Forms.ComboBox();
            this.cmbInventario = new System.Windows.Forms.ComboBox();
            this.cmEmpleado = new System.Windows.Forms.ComboBox();
            this.cmbResultado = new System.Windows.Forms.ComboBox();
            this.btnIngresar = new System.Windows.Forms.Button();
            this.btnRegresar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblOrden
            // 
            this.lblOrden.AutoSize = true;
            this.lblOrden.BackColor = System.Drawing.Color.Transparent;
            this.lblOrden.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOrden.Location = new System.Drawing.Point(57, 134);
            this.lblOrden.Name = "lblOrden";
            this.lblOrden.Size = new System.Drawing.Size(154, 20);
            this.lblOrden.TabIndex = 3;
            this.lblOrden.Text = "Orden Producción";
            // 
            // lblControltitulo
            // 
            this.lblControltitulo.AutoSize = true;
            this.lblControltitulo.BackColor = System.Drawing.Color.Transparent;
            this.lblControltitulo.Font = new System.Drawing.Font("Rockwell", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblControltitulo.Location = new System.Drawing.Point(57, 55);
            this.lblControltitulo.Name = "lblControltitulo";
            this.lblControltitulo.Size = new System.Drawing.Size(192, 22);
            this.lblControltitulo.TabIndex = 2;
            this.lblControltitulo.Text = "Control de Calidad ";
            // 
            // lblInventario
            // 
            this.lblInventario.AutoSize = true;
            this.lblInventario.BackColor = System.Drawing.Color.Transparent;
            this.lblInventario.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInventario.Location = new System.Drawing.Point(57, 205);
            this.lblInventario.Name = "lblInventario";
            this.lblInventario.Size = new System.Drawing.Size(89, 20);
            this.lblInventario.TabIndex = 4;
            this.lblInventario.Text = "Inventario";
            // 
            // lblEmpleado
            // 
            this.lblEmpleado.AutoSize = true;
            this.lblEmpleado.BackColor = System.Drawing.Color.Transparent;
            this.lblEmpleado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEmpleado.Location = new System.Drawing.Point(57, 276);
            this.lblEmpleado.Name = "lblEmpleado";
            this.lblEmpleado.Size = new System.Drawing.Size(89, 20);
            this.lblEmpleado.TabIndex = 5;
            this.lblEmpleado.Text = "Empleado";
            this.lblEmpleado.Click += new System.EventHandler(this.label2_Click);
            // 
            // lblResultado
            // 
            this.lblResultado.AutoSize = true;
            this.lblResultado.BackColor = System.Drawing.Color.Transparent;
            this.lblResultado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblResultado.Location = new System.Drawing.Point(58, 359);
            this.lblResultado.Name = "lblResultado";
            this.lblResultado.Size = new System.Drawing.Size(116, 20);
            this.lblResultado.TabIndex = 6;
            this.lblResultado.Text = "Resultado CC";
            // 
            // cmbOrden
            // 
            this.cmbOrden.FormattingEnabled = true;
            this.cmbOrden.Location = new System.Drawing.Point(292, 130);
            this.cmbOrden.Name = "cmbOrden";
            this.cmbOrden.Size = new System.Drawing.Size(203, 24);
            this.cmbOrden.TabIndex = 7;
            this.cmbOrden.SelectedIndexChanged += new System.EventHandler(this.cmbOrden_SelectedIndexChanged);
            this.cmbOrden.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventOrden);
            // 
            // cmbInventario
            // 
            this.cmbInventario.FormattingEnabled = true;
            this.cmbInventario.Location = new System.Drawing.Point(292, 205);
            this.cmbInventario.Name = "cmbInventario";
            this.cmbInventario.Size = new System.Drawing.Size(203, 24);
            this.cmbInventario.TabIndex = 8;
            this.cmbInventario.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventInventario);
            // 
            // cmEmpleado
            // 
            this.cmEmpleado.FormattingEnabled = true;
            this.cmEmpleado.Location = new System.Drawing.Point(292, 272);
            this.cmEmpleado.Name = "cmEmpleado";
            this.cmEmpleado.Size = new System.Drawing.Size(203, 24);
            this.cmEmpleado.TabIndex = 9;
            this.cmEmpleado.SelectedIndexChanged += new System.EventHandler(this.cmEmpleado_SelectedIndexChanged);
            this.cmEmpleado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventEmpleado);
            // 
            // cmbResultado
            // 
            this.cmbResultado.FormattingEnabled = true;
            this.cmbResultado.Location = new System.Drawing.Point(292, 354);
            this.cmbResultado.Name = "cmbResultado";
            this.cmbResultado.Size = new System.Drawing.Size(203, 24);
            this.cmbResultado.TabIndex = 10;
            this.cmbResultado.SelectedIndexChanged += new System.EventHandler(this.cmbResultado_SelectedIndexChanged);
            this.cmbResultado.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.eventResultado);
            // 
            // btnIngresar
            // 
            this.btnIngresar.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIngresar.Location = new System.Drawing.Point(315, 424);
            this.btnIngresar.Name = "btnIngresar";
            this.btnIngresar.Size = new System.Drawing.Size(134, 41);
            this.btnIngresar.TabIndex = 12;
            this.btnIngresar.Text = "Ingresar";
            this.btnIngresar.UseVisualStyleBackColor = true;
            // 
            // btnRegresar
            // 
            this.btnRegresar.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegresar.Location = new System.Drawing.Point(77, 424);
            this.btnRegresar.Name = "btnRegresar";
            this.btnRegresar.Size = new System.Drawing.Size(134, 41);
            this.btnRegresar.TabIndex = 11;
            this.btnRegresar.Text = "Regresar";
            this.btnRegresar.UseVisualStyleBackColor = true;
            // 
            // frmControlCalidad
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(532, 503);
            this.Controls.Add(this.btnIngresar);
            this.Controls.Add(this.btnRegresar);
            this.Controls.Add(this.cmbResultado);
            this.Controls.Add(this.cmEmpleado);
            this.Controls.Add(this.cmbInventario);
            this.Controls.Add(this.cmbOrden);
            this.Controls.Add(this.lblResultado);
            this.Controls.Add(this.lblEmpleado);
            this.Controls.Add(this.lblInventario);
            this.Controls.Add(this.lblOrden);
            this.Controls.Add(this.lblControltitulo);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmControlCalidad";
            this.Text = "frmControlCalidad";
            this.Load += new System.EventHandler(this.frmControlCalidad_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblOrden;
        private System.Windows.Forms.Label lblControltitulo;
        private System.Windows.Forms.Label lblInventario;
        private System.Windows.Forms.Label lblEmpleado;
        private System.Windows.Forms.Label lblResultado;
        private System.Windows.Forms.ComboBox cmbOrden;
        private System.Windows.Forms.ComboBox cmbInventario;
        private System.Windows.Forms.ComboBox cmEmpleado;
        private System.Windows.Forms.ComboBox cmbResultado;
        private System.Windows.Forms.Button btnIngresar;
        private System.Windows.Forms.Button btnRegresar;
    }
}