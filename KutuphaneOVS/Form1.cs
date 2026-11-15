using KutuphaneOVS.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KutuphaneOVS
{
    public partial class Form1 : Form
    {
        KUTUPHANEKOVSEntities ke = new KUTUPHANEKOVSEntities();

        public Form1()
        {
            InitializeComponent();
        }
        int okitapid, kitapid, uyeid, ceza;

        #region Üye İşlem
        void UyeIslem(int uyeid)
        {
            dgvIslem.DataSource = ke.UyeIslem2(uyeid);
            dgvIslem.Columns[0].Visible = false;
            dgvIslem.Columns[4].Visible = false;
            dgvIslem.Columns[1].HeaderText = "Üye Adı";
            dgvIslem.Columns[2].HeaderText = "Üye Soyadı";
            dgvIslem.Columns[3].HeaderText = "TC Kimlik Numarası";
            dgvIslem.Columns[5].HeaderText = "Kitabın Adı";
            dgvIslem.Columns[6].HeaderText = "Yazarın Adı";
            dgvIslem.Columns[7].HeaderText = "Ödünç Verme Tarihi";
            dgvIslem.Columns[8].HeaderText = "Üyede Kalma Süresi";
            dgvIslem.Columns[9].HeaderText = "Ceza Tutarı";
            if (dgvIslem.RowCount>0)
            {
                okitapid = (int)dgvIslem.Rows[0].Cells[4].Value;
                ceza = (int)dgvIslem.Rows[0].Cells[9].Value;
            }
            else { okitapid = 0; ceza = 0; }

            

        }
        #endregion

        #region Kitap Listeleme
        void KitapListele()
        {
            dgvKitaplar.DataSource = ke.KitapListele();
            dgvKitaplar.Columns[0].Visible = false;
            dgvKitaplar.Columns[2].HeaderText = "Kitabın Adı";
            dgvKitaplar.Columns[5].HeaderText = "Yazar Adı Soyadı";
            kitapid =(int)dgvKitaplar.Rows[0].Cells[0].Value;
        }
        #endregion

        #region Üye Listeleme
        void UyeListe()
        {
            dgvUyeler.DataSource = ke.UyeListe();
            dgvUyeler.Columns[0].Visible = false;
            dgvUyeler.Columns[1].HeaderText = "Üyenin Adı";
            dgvUyeler.Columns[2].HeaderText = "Üyenin Soyadı";
            dgvUyeler.Columns[3].HeaderText = "TC Kimlik Numarası";
            dgvUyeler.Columns[4].HeaderText = "Adres";
            dgvUyeler.Columns[5].HeaderText = "Telefon Numarası";
            uyeid = (int)dgvUyeler.Rows[0].Cells[0].Value;

        }
        #endregion

        #region Çıkış Butonu
        private void BtnCikis_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        #endregion

        #region Form Load
        private void Form1_Load(object sender, EventArgs e)
        {
            UyeListe();
            
            KitapListele();
            UyeIslem(uyeid);
            MTxtPasif();
            KTxtPasif();
            YTxtPasif();
            cbYazarAdi_Doldur();
        }
        #endregion

        #region Üye DataGridView
        private void dgvUyeler_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            uyeid = (int)dgvUyeler.CurrentRow.Cells[0].Value;
            dgvIslem.DataSource = ke.UyeIslem2(uyeid);
        }
        #endregion

        #region Kitap DataGridView
        private void dgvKitaplar_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            kitapid = (int)dgvKitaplar.CurrentRow.Cells[0].Value;

        }
        #endregion

        #region İşlem DataGridView
        private void dgvIslem_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            okitapid = Convert.ToInt32(dgvIslem.CurrentRow.Cells[0].Value.ToString());
            ceza = (int)dgvIslem.CurrentRow.Cells[9].Value;
        }
        #endregion

        #region Geri Al Butonu
        private void btnGeriAl_Click(object sender, EventArgs e)
        {
            ke.KitapGeriAl4(uyeid, okitapid);
            dgvIslem.DataSource = ke.UyeIslem2(uyeid);
            dgvKitaplar.DataSource = ke.KitapListele();
        }
        #endregion

        #region Ödünç Ver Butonu
        private void btnOduncVer_Click(object sender, EventArgs e)
        {
            ke.spKitapVer(uyeid, kitapid);
            KitapListele();
            UyeIslem(uyeid);
            UyeListe();
        }
        #endregion

        #region Textbox Üye-Kitap Ara
        private void txtKitapAra_TextChanged(object sender, EventArgs e)
        {
            dgvKitaplar.DataSource = ke.sp_KitapAra(txtKitapAra.Text).ToList();
        }

        private void txtUyeAra_TextChanged(object sender, EventArgs e)
        {
            dgvUyeler.DataSource = ke.spUyeAra(txtUyeAra.Text).ToList();
        }
        #endregion

        #region Üye - Kİtap - Yazat Methodları
        private void MTxtPasif()
        {
            txtUyeAd.Clear();
            txtUyeSoyad.Clear();
            txtTCKimlik.Clear();
            txtAdres.Clear();
            txtTel.Clear();

            txtUyeAd.Enabled = false;
            txtUyeSoyad.Enabled = false;
            txtTCKimlik.Enabled = false;
            txtAdres.Enabled = false;
            txtTel.Enabled = false;

            btnUyeKaydet.Enabled = false;
        }

        private void YTxtPasif()
        {
            txtYazarAdSoyad.Clear();
            txtYazarAdSoyad.Enabled = false;
            btnYazarKaydet.Enabled = false;
        }

        private void KTxtPasif()
        {
            txtISBN.Clear();
            txtKitapAdi.Clear();
            txtSayfa.Clear();
            txtAdet.Clear();
            cbYazarAdi.Text = "";

            txtISBN.Enabled = false;
            txtKitapAdi.Enabled = false;
            txtSayfa.Enabled = false;
            txtAdet.Enabled = false;
            cbYazarAdi.Enabled = false;

        }
        #endregion

        #region Ekle Butonları
        private void btnUyeEkle_Click(object sender, EventArgs e)
        {
            txtUyeAd.Enabled = true;
            txtUyeSoyad.Enabled = true;
            txtTCKimlik.Enabled = true;
            txtAdres.Enabled = true;
            txtTel.Enabled = true;

            txtUyeAd.Focus();

        }

        private void btnKitapEkle_Click(object sender, EventArgs e)
        {
            txtISBN.Enabled = true;
            txtKitapAdi.Enabled = true;
            txtSayfa.Enabled = true;
            txtAdet.Enabled = true;
            cbYazarAdi.Enabled = true;
            txtISBN.Focus();
        }

        private void btnYazarEkle_Click(object sender, EventArgs e)
        {
            txtYazarAdSoyad.Enabled = true;
            txtYazarAdSoyad.Focus();
        }
        #endregion

        #region TextChanged
        private void txtUyeAd_TextChanged(object sender, EventArgs e)
        {

            if (txtUyeAd.TextLength > 0 && txtUyeSoyad.TextLength > 0 &&
                txtTCKimlik.TextLength > 0 && txtAdres.TextLength > 0 && txtTel.TextLength > 0)
            {
                btnUyeKaydet.Enabled = true;
            }
            else
            {
                btnUyeKaydet.Enabled = false;
            }
        }

        private void txtUyeSoyad_TextChanged(object sender, EventArgs e)
        {
            if (txtUyeAd.TextLength > 0 && txtUyeSoyad.TextLength > 0 &&
                txtTCKimlik.TextLength > 0 && txtAdres.TextLength > 0 && txtTel.TextLength > 0)
            {
                btnUyeKaydet.Enabled = true;
            }
            else
            {
                btnUyeKaydet.Enabled = false;
            }
        }

        private void txtYazarAdSoyad_TextChanged(object sender, EventArgs e)
        {
            if (txtYazarAdSoyad.TextLength > 0)
            {
                btnYazarKaydet.Enabled = true;
            }
            else
            {
                btnYazarKaydet.Enabled = false;
            }
        }

        private void txtISBN_TextChanged(object sender, EventArgs e)
        {
            if (txtISBN.TextLength > 0 && txtKitapAdi.TextLength > 0 && txtSayfa.TextLength > 0 && txtAdet.TextLength > 0)
            {
                btnKitapKaydet.Enabled = true;
            }
            else
            {
                btnKitapKaydet.Enabled = false;
            }
        }
        #endregion

        #region Kaydet Butonları
        private void btnUyeKaydet_Click(object sender, EventArgs e)
        {
            ke.spUyeKaydet(txtUyeAd.Text, txtUyeSoyad.Text, txtTCKimlik.Text, txtAdres.Text, txtTel.Text);
            dgvUyeler.DataSource = ke.UyeListe();
            MTxtPasif();
        }

        private void btnKitapKaydet_Click(object sender, EventArgs e)
        {
            int sayfa, adet, yazarId;
            if (!int.TryParse(txtSayfa.Text, out sayfa) || !int.TryParse(txtAdet.Text, out adet))
            {
                MessageBox.Show("Sayfa sayısı ve stok adedi sayı olmalıdır.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // Yazar listesi "YazarId - Ad Soyad" biçiminde doldurulur
            string secim = cbYazarAdi.Text;
            int ayrac = secim.IndexOf(" - ");
            if (ayrac <= 0 || !int.TryParse(secim.Substring(0, ayrac), out yazarId))
            {
                MessageBox.Show("Lütfen listeden bir yazar seçin.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                ke.KitapEkle(txtISBN.Text.Trim(), txtKitapAdi.Text.Trim(), sayfa, adet, yazarId);
                dgvKitaplar.DataSource = ke.KitapListele();
                KTxtPasif();
            }
            catch (Exception ex)
            {
                // ISBN benzersiz (UNIQUE) olduğu için aynı ISBN ikinci kez eklenemez
                MessageBox.Show("Kitap kaydedilemedi: " + (ex.InnerException?.InnerException?.Message ?? ex.Message), "Hata",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnYazarKaydet_Click(object sender, EventArgs e)
        {
            ke.spYazarKaydet(txtYazarAdSoyad.Text);
            YTxtPasif();
        }
        #endregion

        #region ComboBox Doldur
        //SqlDataReader: Grid halinde değil kaba liste halinde okuma yapar.

        //SqlDataAdapter: Kaba listeyi grid haline dönüştürür.

        //DataTable: Grid için veri kaynağıdır.
        
        private void cbYazarAdi_Doldur()//Hata Ayıklamalı
        {
            dgvGizliYazar.DataSource = ke.spYazarListele2();

            for (int i = 0; i <= dgvGizliYazar.RowCount - 1; i++)
            {
                cbYazarAdi.Items.Add(dgvGizliYazar.Rows[i].Cells[0].Value.ToString() 
                    + " - " + 
                    dgvGizliYazar.Rows[i].Cells[1].Value.ToString());

            }

        }
        #endregion
    }
}