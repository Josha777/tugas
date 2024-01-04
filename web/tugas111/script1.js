// const nama = "yanto"
// let umur = 17
// var alamat = "kudus"


// console.log(`nama saya :  ${nama} umur :  ${umur} alamat : ${alamat}`)

// let nama = prompt('hey biji ketapang sapa nama mu ?')
// let usia = prompt(`usia ${nama} berapa cik`)
// alert(`suwund ${nama} es mengisi data`)


// let namal = prompt(`siapa nama mu`)
// let namap = prompt(`biasa di panggil apa`)
// let sekolah = prompt(`${namap} kamu sekolah di mana`)
// let kelas = prompt(`${namap}kamu kelas berapa`)
// let alamat = prompt(`${namap} dimana alamat mu`)
// let hobi = prompt(`${namap} hobi mu apa`)

// console.log(`Nama Lengkap : ${namal}  Nama Panggilan : ${namap} Sekolah : ${sekolah} Kelas : ${kelas} Alamat : ${alamat} Hobi : ${hobi}`)


// let nama = prompt(`Siapa nama mu ?`)
// let nilai = prompt(`Nilai mu berapa ?`)

// if (nilai > 80) {
//     alert(`selamat ${nama}, anda lulus dengan nilai ${nilai}`)
// }else {
//     alert(`maaf ${nama}, anda tidak lulus dengan nilai ${nilai}`)
// }









// let nama = prompt (`Siapa Nama Anda ?`)
// let usia = prompt (`Berapa Usia Anda ?`)

// if (usia < 20) {
//     alert(`Usia ${nama} tergolong masih remaja`)
// }if (usia > 20) {
//     alert(`Usia ${nama} Tergolong Dewasa`)
// }if (usia < 60) {
//     alert(`Usia ${nama} Tergolong Dewasa`)    
// }if (usia > 60) {
//     alert(`Usia ${nama} tergolong Lansia`)
// }






// let nama = prompt (`Siapa Nama Anda ?`)
// let usia = prompt (`Berapa Usia Anda ?`)

// if (usia <= 20) {
//     alert(`Usia ${nama} tergolong masih Remaja`)
// }else if (usia <= 50) {
//     alert(`Usia ${nama} Tergolong Dewasa`)  
// }else {
//     alert(`Usia ${nama} tergolong Lansia`)
// }



// document.title = 'Belajar yuk'
// const body = document.body
// body.append('Mengisi body')

// const h2 = document.createElement('h2')
// h2.innerHTML = '<marquee>BLABLABLABALABALBABBA</marquee>'
// body.append(h2)

// const h3 = document.createElement('h3')
// h3.textContent = '<marquee>BLABLABLABALABALBABBA</marquee>'
// body.append(h3)

document.title = 'belajar yuk ges'

const body = document.body
body.append('menggisi body')

const h1 = document.createElement('h1')
h1.textContent = ('gwgwgwgwg')
body.append(h1)


const h2 = document.createElement('h2')
h2.innerHTML = '<marquee> aiisdiaisd </marquee>'
body.append(h2)

const h3 = document.createElement('h3')
h3.innerHTML = '<center> aiisdiaisd </center>'
body.append(h3)

const btn2 = document.getElementById('btn2')
btn2.style.border = 'none'
btn2.style.padding = '8px'
btn2.style.background = 'orange'
btn2.style.fontSize = '20px'



function gantiWarna() {
    btn2.style.background = 'blue'
    btn2.textContent = 'tombol sudah di klik'
}

function ubahText() {
    btn2.textContent = 'ini apa'
}

const btn3 = document.getElementById('btn3')
btn3.style.border = 'none'
btn3.style.padding = '8px'
btn3.style.background = 'orange'
btn3.style.fontSize = '20px'

function hapus() {
    var a=(confirm("Apakah Ingin menghapus Data"))
    if (a) {
        alert(`Data Berhasil Di Hapus`)
        window.location = '1.html'
    }else {
        alert(`Data Batal Di Hapus`)
    }

}





