x# Cara SSH ke EC2 Instance (Otomatis dengan Terraform)

## 1. Jalankan Terraform
Pastikan Anda sudah menjalankan:
```bash
terraform apply
```
Ini akan:
- Membuat key pair otomatis (`terraform-ec2-key.pem`)
- Membuat EC2 instance Ubuntu
- Mengoutput public IP instance

## 2. Temukan File Private Key
Setelah apply, file `terraform-ec2-key.pem` akan muncul di folder project Anda.

## 3. Set Permission File Key
Jalankan:
```bash
chmod 600 terraform-ec2-key.pem
```

## 4. Temukan Public IP Instance
Lihat output `terraform apply` pada bagian:
```
Outputs:
public_ip = "X.X.X.X"
```
Ganti `X.X.X.X` dengan IP publik instance Anda.

## 5. SSH ke Instance
Gunakan perintah berikut:
```bash
ssh -i terraform-ec2-key.pem ubuntu@X.X.X.X
```
- Username: `ubuntu` (karena AMI Ubuntu)
- File key: `terraform-ec2-key.pem`
- IP: Ganti dengan public IP instance Anda

## 6. Konfirmasi Koneksi
Jika muncul pertanyaan "Are you sure you want to continue connecting (yes/no/[fingerprint])?", jawab `yes`.

## 7. Selesai
Anda sekarang sudah masuk ke EC2 instance via SSH.

---

**Catatan:**  
- Jangan bagikan file `terraform-ec2-key.pem` ke siapa pun.
- Jika ingin destroy instance, jalankan:
  ```bash
  terraform destroy