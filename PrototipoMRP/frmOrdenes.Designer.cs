namespace PrototipoMRP
{
    partial class frmOrdenes
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmOrdenes));
            this.pnl2 = new System.Windows.Forms.Panel();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnImprimir = new System.Windows.Forms.Button();
            this.btnOrdenesTerminadas = new System.Windows.Forms.Button();
            this.btnOrdenesEspera = new System.Windows.Forms.Button();
            this.btnOrdenesActivas = new System.Windows.Forms.Button();
            this.pnl3 = new System.Windows.Forms.Panel();
            this.btnComponente = new System.Windows.Forms.Button();
            this.btnEstado = new System.Windows.Forms.Button();
            this.btnPrioridad = new System.Windows.Forms.Button();
            this.pnl1 = new System.Windows.Forms.Panel();
            this.dgvVista = new System.Windows.Forms.DataGridView();
            this.pnl2.SuspendLayout();
            this.pnl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvVista)).BeginInit();
            this.SuspendLayout();
            // 
            // pnl2
            // 
            this.pnl2.BackColor = System.Drawing.Color.Teal;
            this.pnl2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnl2.Controls.Add(this.btnSalir);
            this.pnl2.Controls.Add(this.btnImprimir);
            this.pnl2.Controls.Add(this.btnOrdenesTerminadas);
            this.pnl2.Controls.Add(this.btnOrdenesEspera);
            this.pnl2.Controls.Add(this.btnOrdenesActivas);
            this.pnl2.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnl2.Location = new System.Drawing.Point(0, 0);
            this.pnl2.Name = "pnl2";
            this.pnl2.Size = new System.Drawing.Size(1920, 85);
            this.pnl2.TabIndex = 1;
            // 
            // btnSalir
            // 
            this.btnSalir.BackColor = System.Drawing.Color.White;
            this.btnSalir.Image = ((System.Drawing.Image)(resources.GetObject("btnSalir.Image")));
            this.btnSalir.Location = new System.Drawing.Point(963, 5);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(77, 60);
            this.btnSalir.TabIndex = 4;
            this.btnSalir.UseVisualStyleBackColor = false;
            // 
            // btnImprimir
            // 
            this.btnImprimir.BackColor = System.Drawing.Color.White;
            this.btnImprimir.Image = ((System.Drawing.Image)(resources.GetObject("btnImprimir.Image")));
            this.btnImprimir.Location = new System.Drawing.Point(880, 5);
            this.btnImprimir.Name = "btnImprimir";
            this.btnImprimir.Size = new System.Drawing.Size(77, 60);
            this.btnImprimir.TabIndex = 3;
            this.btnImprimir.UseVisualStyleBackColor = false;
            // 
            // btnOrdenesTerminadas
            // 
            this.btnOrdenesTerminadas.BackColor = System.Drawing.Color.White;
            this.btnOrdenesTerminadas.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnOrdenesTerminadas.Location = new System.Drawing.Point(598, 5);
            this.btnOrdenesTerminadas.Name = "btnOrdenesTerminadas";
            this.btnOrdenesTerminadas.Size = new System.Drawing.Size(255, 60);
            this.btnOrdenesTerminadas.TabIndex = 2;
            this.btnOrdenesTerminadas.Text = "Ordenes Terminadas:";
            this.btnOrdenesTerminadas.UseVisualStyleBackColor = false;
            // 
            // btnOrdenesEspera
            // 
            this.btnOrdenesEspera.BackColor = System.Drawing.Color.White;
            this.btnOrdenesEspera.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnOrdenesEspera.Location = new System.Drawing.Point(313, 5);
            this.btnOrdenesEspera.Name = "btnOrdenesEspera";
            this.btnOrdenesEspera.Size = new System.Drawing.Size(255, 60);
            this.btnOrdenesEspera.TabIndex = 1;
            this.btnOrdenesEspera.Text = "Ordenes en Espera: ";
            this.btnOrdenesEspera.UseVisualStyleBackColor = false;
            // 
            // btnOrdenesActivas
            // 
            this.btnOrdenesActivas.BackColor = System.Drawing.Color.White;
            this.btnOrdenesActivas.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnOrdenesActivas.Location = new System.Drawing.Point(29, 5);
            this.btnOrdenesActivas.Name = "btnOrdenesActivas";
            this.btnOrdenesActivas.Size = new System.Drawing.Size(255, 60);
            this.btnOrdenesActivas.TabIndex = 0;
            this.btnOrdenesActivas.Text = "Ordenes Activas: ";
            this.btnOrdenesActivas.UseVisualStyleBackColor = false;
            // 
            // pnl3
            // 
            this.pnl3.BackColor = System.Drawing.Color.LightGray;
            this.pnl3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnl3.Controls.Add(this.btnComponente);
            this.pnl3.Controls.Add(this.btnEstado);
            this.pnl3.Controls.Add(this.btnPrioridad);
            this.pnl3.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnl3.Location = new System.Drawing.Point(0, 85);
            this.pnl3.Name = "pnl3";
            this.pnl3.Size = new System.Drawing.Size(199, 665);
            this.pnl3.TabIndex = 2;
            // 
            // btnComponente
            // 
            this.btnComponente.BackColor = System.Drawing.Color.White;
            this.btnComponente.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnComponente.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnComponente.Location = new System.Drawing.Point(0, 144);
            this.btnComponente.Name = "btnComponente";
            this.btnComponente.Size = new System.Drawing.Size(197, 72);
            this.btnComponente.TabIndex = 2;
            this.btnComponente.Text = "C. por Componente";
            this.btnComponente.UseVisualStyleBackColor = false;
            // 
            // btnEstado
            // 
            this.btnEstado.BackColor = System.Drawing.Color.White;
            this.btnEstado.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnEstado.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEstado.Location = new System.Drawing.Point(0, 72);
            this.btnEstado.Name = "btnEstado";
            this.btnEstado.Size = new System.Drawing.Size(197, 72);
            this.btnEstado.TabIndex = 1;
            this.btnEstado.Text = "Estado";
            this.btnEstado.UseVisualStyleBackColor = false;
            // 
            // btnPrioridad
            // 
            this.btnPrioridad.BackColor = System.Drawing.Color.White;
            this.btnPrioridad.Dock = System.Windows.Forms.DockStyle.Top;
            this.btnPrioridad.Font = new System.Drawing.Font("Rockwell", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPrioridad.Location = new System.Drawing.Point(0, 0);
            this.btnPrioridad.Name = "btnPrioridad";
            this.btnPrioridad.Size = new System.Drawing.Size(197, 72);
            this.btnPrioridad.TabIndex = 0;
            this.btnPrioridad.Text = "Prioridad";
            this.btnPrioridad.UseVisualStyleBackColor = false;
            // 
            // pnl1
            // 
            this.pnl1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.pnl1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnl1.Location = new System.Drawing.Point(199, 706);
            this.pnl1.Name = "pnl1";
            this.pnl1.Size = new System.Drawing.Size(1721, 44);
            this.pnl1.TabIndex = 3;
            // 
            // dgvVista
            // 
            this.dgvVista.BackgroundColor = System.Drawing.SystemColors.ControlDarkDark;
            this.dgvVista.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvVista.GridColor = System.Drawing.Color.White;
            this.dgvVista.Location = new System.Drawing.Point(199, 85);
            this.dgvVista.Name = "dgvVista";
            this.dgvVista.RowHeadersWidth = 51;
            this.dgvVista.RowTemplate.Height = 24;
            this.dgvVista.Size = new System.Drawing.Size(1369, 627);
            this.dgvVista.TabIndex = 4;
            // 
            // frmOrdenes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(144)))), ((int)(((byte)(213)))), ((int)(((byte)(250)))));
            this.ClientSize = new System.Drawing.Size(1920, 750);
            this.Controls.Add(this.dgvVista);
            this.Controls.Add(this.pnl1);
            this.Controls.Add(this.pnl3);
            this.Controls.Add(this.pnl2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Name = "frmOrdenes";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmOrdenes";
            this.Load += new System.EventHandler(this.frmCompleta_Load);
            this.pnl2.ResumeLayout(false);
            this.pnl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvVista)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel pnl2;
        private System.Windows.Forms.Button btnOrdenesActivas;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnImprimir;
        private System.Windows.Forms.Button btnOrdenesTerminadas;
        private System.Windows.Forms.Button btnOrdenesEspera;
        private System.Windows.Forms.Panel pnl3;
        private System.Windows.Forms.Button btnPrioridad;
        private System.Windows.Forms.Button btnComponente;
        private System.Windows.Forms.Button btnEstado;
        private System.Windows.Forms.Panel pnl1;
        private System.Windows.Forms.DataGridView dgvVista;
    }
}

