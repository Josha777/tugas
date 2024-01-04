const nama = ["ian", "dirga", "elang", "mesa", "zua", "ahmad", "hafiz"];
//1
//console.log(nama);
//2
//console.log(nama.join('-'));
//3
//console.log(nama[3], nama[6]);
//4
//nama.push("rafa");
//console.log(nama);
//5
//nama.pop();
//console.log(nama);
//6
//nama.unshift('yanto');
//console.log(nama);
//7
//nama.shift(0);
//console.log(nama);
//8
//const nama2 = nama.slice(1,3);
//console.log(nama2);
//9
//nama.splice(2, 1, 'rosyid', 'majid');
//console.log(nama); 


//object literal
var siswa1 = {
    nama: "yanto",
    sekolah: "Muhiyo",
    Noabsen: "20",
    kelas: "11 RPL",
    TTL: {
        tempat: "Yogyakarta",
        tanggal: "06",
        bulan: "Mei",
        tahun: "2000"
    },
    alamat: {
        jalan: "Jl.nt street",
        kota: "Bantul",
        provinsi: "DIY"
    }
};

var siswa2 = {
    nama: "yanti",
    sekolah: "Muhiyo",
    Noabsen: "12",
    kelas: "11 RPL",
    TTL: {
        tempat: "Yogyakarta",
        tanggal: "01",
        bulan: "Juni",
        tahun: {
            angka: "2000",
            huruf: "pak roland keren"
        }
    },
    alamat: {
        jalan: "Jl.manggis",
        kota: "Bantul",
        provinsi: "DIY"
    }
};