namespace KutuphaneOVS
{
    partial class Form1
    {
        /// <summary>
        ///Gerekli tasarımcı değişkeni.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///Kullanılan tüm kaynakları temizleyin.
        /// </summary>
        ///<param name="disposing">yönetilen kaynaklar dispose edilmeliyse doğru; aksi halde yanlış.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer üretilen kod

        /// <summary>
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            this.dgvUyeler = new System.Windows.Forms.DataGridView();
            this.dgvKitaplar = new System.Windows.Forms.DataGridView();
            this.dgvIslem = new System.Windows.Forms.DataGridView();
            this.BtnCikis = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txtUyeAd = new System.Windows.Forms.TextBox();
            this.txtUyeSoyad = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtAdres = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtTel = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTCKimlik = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnUyeKaydet = new System.Windows.Forms.Button();
            this.txtUyeAra = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtKitapAra = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.btnOduncVer = new System.Windows.Forms.Button();
            this.btnGeriAl = new System.Windows.Forms.Button();
            this.btnUyeEkle = new System.Windows.Forms.Button();
            this.txtYazarAdSoyad = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.btnYazarEkle = new System.Windows.Forms.Button();
            this.btnYazarKaydet = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.txtISBN = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtKitapAdi = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtSayfa = new System.Windows.Forms.TextBox();
            this.txtAdet = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.btnKitapEkle = new System.Windows.Forms.Button();
            this.btnKitapKaydet = new System.Windows.Forms.Button();
            this.cbYazarAdi = new System.Windows.Forms.ComboBox();
            this.label13 = new System.Windows.Forms.Label();
            this.dgvGizliYazar = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUyeler)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvKitaplar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvIslem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGizliYazar)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvUyeler
            // 
            this.dgvUyeler.AllowUserToAddRows = false;
            this.dgvUyeler.AllowUserToDeleteRows = false;
            this.dgvUyeler.AllowUserToResizeRows = false;
            this.dgvUyeler.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvUyeler.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvUyeler.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgvUyeler.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvUyeler.Location = new System.Drawing.Point(213, 92);
            this.dgvUyeler.Name = "dgvUyeler";
            this.dgvUyeler.ReadOnly = true;
            this.dgvUyeler.RowHeadersVisible = false;
            this.dgvUyeler.RowHeadersWidth = 51;
            this.dgvUyeler.RowTemplate.Height = 24;
            this.dgvUyeler.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvUyeler.Size = new System.Drawing.Size(586, 300);
            this.dgvUyeler.TabIndex = 0;
            this.dgvUyeler.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvUyeler_CellClick);
            // 
            // dgvKitaplar
            // 
            this.dgvKitaplar.AllowUserToAddRows = false;
            this.dgvKitaplar.AllowUserToDeleteRows = false;
            this.dgvKitaplar.AllowUserToResizeRows = false;
            this.dgvKitaplar.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvKitaplar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvKitaplar.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvKitaplar.Location = new System.Drawing.Point(804, 92);
            this.dgvKitaplar.Name = "dgvKitaplar";
            this.dgvKitaplar.ReadOnly = true;
            this.dgvKitaplar.RowHeadersVisible = false;
            this.dgvKitaplar.RowHeadersWidth = 51;
            this.dgvKitaplar.RowTemplate.Height = 24;
            this.dgvKitaplar.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvKitaplar.Size = new System.Drawing.Size(556, 300);
            this.dgvKitaplar.TabIndex = 1;
            this.dgvKitaplar.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvKitaplar_CellClick);
            // 
            // dgvIslem
            // 
            this.dgvIslem.AllowUserToAddRows = false;
            this.dgvIslem.AllowUserToDeleteRows = false;
            this.dgvIslem.AllowUserToResizeRows = false;
            this.dgvIslem.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvIslem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvIslem.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvIslem.Location = new System.Drawing.Point(213, 449);
            this.dgvIslem.Name = "dgvIslem";
            this.dgvIslem.ReadOnly = true;
            this.dgvIslem.RowHeadersVisible = false;
            this.dgvIslem.RowHeadersWidth = 51;
            this.dgvIslem.RowTemplate.Height = 24;
            this.dgvIslem.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvIslem.Size = new System.Drawing.Size(1148, 270);
            this.dgvIslem.TabIndex = 2;
            this.dgvIslem.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvIslem_CellClick);
            // 
            // BtnCikis
            // 
            this.BtnCikis.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.BtnCikis.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.BtnCikis.Location = new System.Drawing.Point(1231, 725);
            this.BtnCikis.Name = "BtnCikis";
            this.BtnCikis.Size = new System.Drawing.Size(130, 45);
            this.BtnCikis.TabIndex = 22;
            this.BtnCikis.Text = "ÇIKIŞ";
            this.BtnCikis.UseVisualStyleBackColor = false;
            this.BtnCikis.Click += new System.EventHandler(this.BtnCikis_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(11, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(110, 22);
            this.label1.TabIndex = 4;
            this.label1.Text = "Üyenin Adı";
            // 
            // txtUyeAd
            // 
            this.txtUyeAd.Location = new System.Drawing.Point(11, 37);
            this.txtUyeAd.Multiline = true;
            this.txtUyeAd.Name = "txtUyeAd";
            this.txtUyeAd.Size = new System.Drawing.Size(185, 29);
            this.txtUyeAd.TabIndex = 1;
            this.txtUyeAd.TextChanged += new System.EventHandler(this.txtUyeAd_TextChanged);
            // 
            // txtUyeSoyad
            // 
            this.txtUyeSoyad.Location = new System.Drawing.Point(11, 92);
            this.txtUyeSoyad.Multiline = true;
            this.txtUyeSoyad.Name = "txtUyeSoyad";
            this.txtUyeSoyad.Size = new System.Drawing.Size(185, 29);
            this.txtUyeSoyad.TabIndex = 2;
            this.txtUyeSoyad.TextChanged += new System.EventHandler(this.txtUyeSoyad_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(11, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(140, 22);
            this.label2.TabIndex = 6;
            this.label2.Text = "Üyenin Soyadı";
            // 
            // txtAdres
            // 
            this.txtAdres.Location = new System.Drawing.Point(11, 202);
            this.txtAdres.Multiline = true;
            this.txtAdres.Name = "txtAdres";
            this.txtAdres.Size = new System.Drawing.Size(185, 65);
            this.txtAdres.TabIndex = 4;
            this.txtAdres.TextChanged += new System.EventHandler(this.txtUyeSoyad_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(11, 179);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(60, 22);
            this.label3.TabIndex = 8;
            this.label3.Text = "Adres";
            // 
            // txtTel
            // 
            this.txtTel.Location = new System.Drawing.Point(11, 293);
            this.txtTel.Multiline = true;
            this.txtTel.Name = "txtTel";
            this.txtTel.Size = new System.Drawing.Size(185, 29);
            this.txtTel.TabIndex = 5;
            this.txtTel.TextChanged += new System.EventHandler(this.txtUyeSoyad_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.Location = new System.Drawing.Point(11, 270);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(80, 22);
            this.label4.TabIndex = 10;
            this.label4.Text = "Telefon";
            // 
            // txtTCKimlik
            // 
            this.txtTCKimlik.Location = new System.Drawing.Point(11, 147);
            this.txtTCKimlik.Multiline = true;
            this.txtTCKimlik.Name = "txtTCKimlik";
            this.txtTCKimlik.Size = new System.Drawing.Size(185, 29);
            this.txtTCKimlik.TabIndex = 3;
            this.txtTCKimlik.TextChanged += new System.EventHandler(this.txtUyeSoyad_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.Location = new System.Drawing.Point(11, 124);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(100, 22);
            this.label5.TabIndex = 12;
            this.label5.Text = "TC Kimlik";
            // 
            // btnUyeKaydet
            // 
            this.btnUyeKaydet.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnUyeKaydet.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnUyeKaydet.Location = new System.Drawing.Point(11, 328);
            this.btnUyeKaydet.Name = "btnUyeKaydet";
            this.btnUyeKaydet.Size = new System.Drawing.Size(91, 45);
            this.btnUyeKaydet.TabIndex = 6;
            this.btnUyeKaydet.Text = "KAYDET";
            this.btnUyeKaydet.UseVisualStyleBackColor = false;
            this.btnUyeKaydet.Click += new System.EventHandler(this.btnUyeKaydet_Click);
            // 
            // txtUyeAra
            // 
            this.txtUyeAra.Location = new System.Drawing.Point(213, 53);
            this.txtUyeAra.Multiline = true;
            this.txtUyeAra.Name = "txtUyeAra";
            this.txtUyeAra.Size = new System.Drawing.Size(229, 29);
            this.txtUyeAra.TabIndex = 18;
            this.txtUyeAra.TextChanged += new System.EventHandler(this.txtUyeAra_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label6.Location = new System.Drawing.Point(209, 10);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(400, 22);
            this.label6.TabIndex = 15;
            this.label6.Text = "Üye Aramak için TC Kimlik Giriniz......";
            // 
            // txtKitapAra
            // 
            this.txtKitapAra.Location = new System.Drawing.Point(804, 53);
            this.txtKitapAra.Multiline = true;
            this.txtKitapAra.Name = "txtKitapAra";
            this.txtKitapAra.Size = new System.Drawing.Size(202, 29);
            this.txtKitapAra.TabIndex = 19;
            this.txtKitapAra.TextChanged += new System.EventHandler(this.txtKitapAra_TextChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label7.Location = new System.Drawing.Point(800, 10);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(460, 22);
            this.label7.TabIndex = 17;
            this.label7.Text = "Kitap Aramak için ISBN yada Kitap Adı giriniz";
            // 
            // btnOduncVer
            // 
            this.btnOduncVer.BackColor = System.Drawing.Color.PaleGreen;
            this.btnOduncVer.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnOduncVer.Location = new System.Drawing.Point(1230, 41);
            this.btnOduncVer.Name = "btnOduncVer";
            this.btnOduncVer.Size = new System.Drawing.Size(130, 45);
            this.btnOduncVer.TabIndex = 20;
            this.btnOduncVer.Text = "Ödünç Ver";
            this.btnOduncVer.UseVisualStyleBackColor = false;
            this.btnOduncVer.Click += new System.EventHandler(this.btnOduncVer_Click);
            // 
            // btnGeriAl
            // 
            this.btnGeriAl.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnGeriAl.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnGeriAl.Location = new System.Drawing.Point(1231, 398);
            this.btnGeriAl.Name = "btnGeriAl";
            this.btnGeriAl.Size = new System.Drawing.Size(130, 45);
            this.btnGeriAl.TabIndex = 21;
            this.btnGeriAl.Text = "Geri Al";
            this.btnGeriAl.UseVisualStyleBackColor = false;
            this.btnGeriAl.Click += new System.EventHandler(this.btnGeriAl_Click);
            // 
            // btnUyeEkle
            // 
            this.btnUyeEkle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnUyeEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnUyeEkle.Location = new System.Drawing.Point(116, 328);
            this.btnUyeEkle.Name = "btnUyeEkle";
            this.btnUyeEkle.Size = new System.Drawing.Size(80, 45);
            this.btnUyeEkle.TabIndex = 7;
            this.btnUyeEkle.Text = "EKLE";
            this.btnUyeEkle.UseVisualStyleBackColor = false;
            this.btnUyeEkle.Click += new System.EventHandler(this.btnUyeEkle_Click);
            // 
            // txtYazarAdSoyad
            // 
            this.txtYazarAdSoyad.Location = new System.Drawing.Point(11, 408);
            this.txtYazarAdSoyad.Multiline = true;
            this.txtYazarAdSoyad.Name = "txtYazarAdSoyad";
            this.txtYazarAdSoyad.Size = new System.Drawing.Size(185, 29);
            this.txtYazarAdSoyad.TabIndex = 8;
            this.txtYazarAdSoyad.TextChanged += new System.EventHandler(this.txtYazarAdSoyad_TextChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label8.Location = new System.Drawing.Point(11, 383);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(150, 22);
            this.label8.TabIndex = 22;
            this.label8.Text = "Yazar Ad Soyad";
            // 
            // btnYazarEkle
            // 
            this.btnYazarEkle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnYazarEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnYazarEkle.Location = new System.Drawing.Point(116, 443);
            this.btnYazarEkle.Name = "btnYazarEkle";
            this.btnYazarEkle.Size = new System.Drawing.Size(80, 45);
            this.btnYazarEkle.TabIndex = 10;
            this.btnYazarEkle.Text = "EKLE";
            this.btnYazarEkle.UseVisualStyleBackColor = false;
            this.btnYazarEkle.Click += new System.EventHandler(this.btnYazarEkle_Click);
            // 
            // btnYazarKaydet
            // 
            this.btnYazarKaydet.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnYazarKaydet.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnYazarKaydet.Location = new System.Drawing.Point(11, 443);
            this.btnYazarKaydet.Name = "btnYazarKaydet";
            this.btnYazarKaydet.Size = new System.Drawing.Size(91, 45);
            this.btnYazarKaydet.TabIndex = 9;
            this.btnYazarKaydet.Text = "KAYDET";
            this.btnYazarKaydet.UseVisualStyleBackColor = false;
            this.btnYazarKaydet.Click += new System.EventHandler(this.btnYazarKaydet_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label9.Location = new System.Drawing.Point(11, 495);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(50, 22);
            this.label9.TabIndex = 22;
            this.label9.Text = "ISBN";
            // 
            // txtISBN
            // 
            this.txtISBN.Location = new System.Drawing.Point(11, 520);
            this.txtISBN.Multiline = true;
            this.txtISBN.Name = "txtISBN";
            this.txtISBN.Size = new System.Drawing.Size(185, 29);
            this.txtISBN.TabIndex = 11;
            this.txtISBN.TextChanged += new System.EventHandler(this.txtISBN_TextChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label10.Location = new System.Drawing.Point(11, 552);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(100, 22);
            this.label10.TabIndex = 22;
            this.label10.Text = "Kitap Adı";
            // 
            // txtKitapAdi
            // 
            this.txtKitapAdi.Location = new System.Drawing.Point(11, 577);
            this.txtKitapAdi.Multiline = true;
            this.txtKitapAdi.Name = "txtKitapAdi";
            this.txtKitapAdi.Size = new System.Drawing.Size(185, 29);
            this.txtKitapAdi.TabIndex = 12;
            this.txtKitapAdi.TextChanged += new System.EventHandler(this.txtISBN_TextChanged);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label11.Location = new System.Drawing.Point(11, 609);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(130, 22);
            this.label11.TabIndex = 22;
            this.label11.Text = "Sayfa Sayısı";
            // 
            // txtSayfa
            // 
            this.txtSayfa.Location = new System.Drawing.Point(11, 634);
            this.txtSayfa.Multiline = true;
            this.txtSayfa.Name = "txtSayfa";
            this.txtSayfa.Size = new System.Drawing.Size(185, 29);
            this.txtSayfa.TabIndex = 13;
            this.txtSayfa.TextChanged += new System.EventHandler(this.txtISBN_TextChanged);
            // 
            // txtAdet
            // 
            this.txtAdet.Location = new System.Drawing.Point(11, 690);
            this.txtAdet.Multiline = true;
            this.txtAdet.Name = "txtAdet";
            this.txtAdet.Size = new System.Drawing.Size(185, 29);
            this.txtAdet.TabIndex = 14;
            this.txtAdet.TextChanged += new System.EventHandler(this.txtISBN_TextChanged);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label12.Location = new System.Drawing.Point(11, 665);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(110, 22);
            this.label12.TabIndex = 26;
            this.label12.Text = "Stok Adeti";
            // 
            // btnKitapEkle
            // 
            this.btnKitapEkle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.btnKitapEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnKitapEkle.Location = new System.Drawing.Point(318, 725);
            this.btnKitapEkle.Name = "btnKitapEkle";
            this.btnKitapEkle.Size = new System.Drawing.Size(80, 45);
            this.btnKitapEkle.TabIndex = 17;
            this.btnKitapEkle.Text = "EKLE";
            this.btnKitapEkle.UseVisualStyleBackColor = false;
            this.btnKitapEkle.Click += new System.EventHandler(this.btnKitapEkle_Click);
            // 
            // btnKitapKaydet
            // 
            this.btnKitapKaydet.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.btnKitapKaydet.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btnKitapKaydet.Location = new System.Drawing.Point(213, 725);
            this.btnKitapKaydet.Name = "btnKitapKaydet";
            this.btnKitapKaydet.Size = new System.Drawing.Size(99, 45);
            this.btnKitapKaydet.TabIndex = 16;
            this.btnKitapKaydet.Text = "KAYDET";
            this.btnKitapKaydet.UseVisualStyleBackColor = false;
            this.btnKitapKaydet.Click += new System.EventHandler(this.btnKitapKaydet_Click);
            // 
            // cbYazarAdi
            // 
            this.cbYazarAdi.FormattingEnabled = true;
            this.cbYazarAdi.Location = new System.Drawing.Point(11, 746);
            this.cbYazarAdi.Name = "cbYazarAdi";
            this.cbYazarAdi.Size = new System.Drawing.Size(183, 24);
            this.cbYazarAdi.TabIndex = 15;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Cascadia Mono", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label13.Location = new System.Drawing.Point(11, 721);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(120, 22);
            this.label13.TabIndex = 31;
            this.label13.Text = "Yazarın Adı";
            // 
            // dgvGizliYazar
            // 
            this.dgvGizliYazar.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvGizliYazar.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvGizliYazar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvGizliYazar.DefaultCellStyle = dataGridViewCellStyle3;
            this.dgvGizliYazar.Location = new System.Drawing.Point(260, 352);
            this.dgvGizliYazar.Name = "dgvGizliYazar";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvGizliYazar.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvGizliYazar.RowHeadersWidth = 51;
            this.dgvGizliYazar.RowTemplate.Height = 24;
            this.dgvGizliYazar.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvGizliYazar.Size = new System.Drawing.Size(240, 150);
            this.dgvGizliYazar.TabIndex = 32;
            this.dgvGizliYazar.Visible = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(1398, 778);
            this.Controls.Add(this.dgvGizliYazar);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.cbYazarAdi);
            this.Controls.Add(this.btnKitapEkle);
            this.Controls.Add(this.btnKitapKaydet);
            this.Controls.Add(this.txtAdet);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.btnYazarEkle);
            this.Controls.Add(this.btnYazarKaydet);
            this.Controls.Add(this.txtSayfa);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.txtKitapAdi);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.txtISBN);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtYazarAdSoyad);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.btnUyeEkle);
            this.Controls.Add(this.btnGeriAl);
            this.Controls.Add(this.btnOduncVer);
            this.Controls.Add(this.txtKitapAra);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txtUyeAra);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.btnUyeKaydet);
            this.Controls.Add(this.txtTCKimlik);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtTel);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtAdres);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtUyeSoyad);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtUyeAd);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.BtnCikis);
            this.Controls.Add(this.dgvIslem);
            this.Controls.Add(this.dgvKitaplar);
            this.Controls.Add(this.dgvUyeler);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Name = "Form1";
            this.Text = "Kütüphane Ödünç Verme Sistemi";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvUyeler)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvKitaplar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvIslem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGizliYazar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvUyeler;
        private System.Windows.Forms.DataGridView dgvKitaplar;
        private System.Windows.Forms.DataGridView dgvIslem;
        private System.Windows.Forms.Button BtnCikis;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtUyeAd;
        private System.Windows.Forms.TextBox txtUyeSoyad;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtAdres;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtTel;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTCKimlik;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnUyeKaydet;
        private System.Windows.Forms.TextBox txtUyeAra;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtKitapAra;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btnOduncVer;
        private System.Windows.Forms.Button btnGeriAl;
        private System.Windows.Forms.Button btnUyeEkle;
        private System.Windows.Forms.TextBox txtYazarAdSoyad;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnYazarEkle;
        private System.Windows.Forms.Button btnYazarKaydet;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtISBN;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtKitapAdi;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtSayfa;
        private System.Windows.Forms.TextBox txtAdet;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Button btnKitapEkle;
        private System.Windows.Forms.Button btnKitapKaydet;
        private System.Windows.Forms.ComboBox cbYazarAdi;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.DataGridView dgvGizliYazar;
    }
}

