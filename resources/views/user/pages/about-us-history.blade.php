@extends('user.layouts.main')

@section('title', 'Tentang Kami - Sejarah Sanggar')

@section('content')
    <!-- Hero Start -->
    <div class="container-fluid bg-light py-6 my-6 mt-0">
        <div class="container text-center animated bounceInDown">
            <h1 class="display-1 mb-4">Sejarah</h1>
            <ol class="breadcrumb justify-content-center mb-0 animated bounceInDown">
                <li class="breadcrumb-item"><a href="{{ route('/') }}">Beranda</a></li>
                <li class="breadcrumb-item"><a href="#">Tentang Kami</a></li>
                <li class="breadcrumb-item text-dark" aria-current="page">Sejarah</li>
            </ol>
        </div>
    </div>
    <!-- Hero End -->

    <!-- About Satrt -->
    <div class="container-fluid py-4">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-5 wow bounceInUp" data-wow-delay="0.1s">
                    <img src="{{ asset('assets/user/img/sanggar.jpg') }}" class="img-fluid rounded" alt="Gambar Sanggar">
                </div>
                <div class="col-lg-7 wow bounceInUp" data-wow-delay="0.3s">
                    <h1 class="display-5 mb-4">Sejarah Sanggar Leklok</h1>
                    <div style="text-align: justify">
                        <p class="mb-3"><span class="me-5"></span>Sanggar seni leklok, adalah
                            sanggar yang
                            bergerak di
                            bidang Karawitan (seni
                            gambelan) membuka kursus dan penyewaan alat langsung pemain Instrumen mulai dari
                            gong semar pegulingan hingga gender. Kursus dibuka untuk umum namun pada saat ini
                            (2024) sedang difokuskan untuk mencoba mengajak anak anak SD hingga SMA dengan
                            bayaran sukarela guna meningkatkan minat anak pada seni instrumen klasik.</p>
                        <p><span class="me-5"></span>Leklok sendiri telah berdiri sejak tahun 2016 dan
                            telah
                            memiliki beberapa
                            pengalaman berharga selain wajibnya kita ngaturanayah (membantu tulus ikhlas) dengan
                            memainkan instrumen guna melengkapi suatu Upacara. Sanggar Leklok juga sempat
                            mewakili Tabanan dalam ajang “Lomba Penasar Se-Bali” pada tahun 2019 di Art Center,
                            PKB-Denpasar. Dan kembali mewakili Tabanan dalam ajang “Lomba Gender Wayang SeBali” pada tahun
                            2022
                            di Art Center, PKB-Denpasar.</p>
                    </div>
                </div>
                <div class="col-lg-12 wow bounceInUp" data-wow-delay="0.4s">
                    <p><span class="me-5"></span>Dari awal
                        dibentuknya
                        sanggar memang memiliki tekad
                        untuk
                        meningkatkan minat
                        anak muda untuk melestarikan seni instrumen klasik. Sehingga Sanggar ini memiliki visi
                        dan misi yang sangat sederhana, yaitu sebagai wadah ekpresi dari tingkat anak hingga
                        lansia.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
@endsection
