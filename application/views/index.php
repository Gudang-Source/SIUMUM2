       <?php 
            function hari_ini(){
                $hari = date ("D");
             
                switch($hari){
                    case 'Sun':
                        $hari_ini = "Minggu";
                    break;
             
                    case 'Mon':         
                        $hari_ini = "Senin";
                    break;
             
                    case 'Tue':
                        $hari_ini = "Selasa";
                    break;
             
                    case 'Wed':
                        $hari_ini = "Rabu";
                    break;
             
                    case 'Thu':
                        $hari_ini = "Kamis";
                    break;
             
                    case 'Fri':
                        $hari_ini = "Jumat";
                    break;
             
                    case 'Sat':
                        $hari_ini = "Sabtu";
                    break;
                    
                    default:
                        $hari_ini = "Tidak di ketahui";     
                    break;
                }
             
                return "<b>" . $hari_ini . "</b>";
             
            }
        ?>
        <!-- PAGE CONTAINER-->
        <div class="page-container2">
            <!-- HEADER DESKTOP-->
            <!-- HEADER IF MOBILE MODE -->
            <header class="header-desktop2">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap2">
                            <div class="logo d-block d-lg-none">
                                <a href="#">
                                    <img src="images/icon/logo-white.png" alt="CoolAdmin" />
                                </a>
                            </div>
                            <div class="header-button2">
                                <div class="header-button-item js-item-menu">
                                    <i class="zmdi zmdi-search"></i>
                                    <div class="search-dropdown js-dropdown">
                                        <form action="">
                                            <input class="au-input au-input--full au-input--h65" type="text" placeholder="Cari Nomor Polisi Kendaraan" />
                                            <span class="search-dropdown__icon">
                                                <i class="zmdi zmdi-search"></i>
                                            </span>
                                        </form>
                                    </div>
                                </div>
                                <div class="header-button-item js-item-menu">
                                    <i class="zmdi zmdi-notifications"></i>
                                    <div class="notifi-dropdown js-dropdown">
                                        <div class="notifi__title">
                                            <p>You have 0 Notifications</p>
                                        </div>
                                        <div class="notifi__footer">
                                            <a href="#">All notifications</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="header-button-item mr-0 js-sidebar-btn">
                                    <i class="zmdi zmdi-menu"></i>
                                </div>
                                <div class="setting-menu js-right-sidebar d-none d-lg-block">
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-account"></i>Account</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-settings"></i>Setting</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
                <div class="logo">
                    <a href="#">
                        <img src="images/icon/logo-white.png" alt="Cool Admin" />
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar2">
                    <div class="account2">
                        <div class="image img-cir img-120">
                            <img src="images/icon/avatar-big-01.jpg" alt="John Doe" />
                        </div>
                        <h4 class="name">Dadang Supriatna</h4>
                        <a href="#">Keluar</a>
                    </div>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a href="inbox.html">
                                    <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            </li>
                            <li>
                                <a href="inbox.html">
                                    <i class="fas fa-car"></i>Mobil</a>
                                <span class="inbox-num">3</span>
                            </li>
                            <li class="has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-wrench"></i>Perawatan
                                    <span class="arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </span>
                                </a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="table.html">
                                            <i class="fas fa-gears"></i>Oli</a>
                                    </li>
                                    <li>
                                        <a href="form.html">
                                            <i class="far fa-circle"></i>Ban</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END HEADER DESKTOP-->

            <!-- BREADCRUMB-->
            <section class="au-breadcrumb m-t-75">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="au-breadcrumb-content">
                                    <div class="au-breadcrumb-left">
                                        <span class="au-breadcrumb-span">You are here:</span>
                                        <ul class="list-unstyled list-inline au-breadcrumb__list">
                                            <li class="list-inline-item active">
                                                <a href="#">Home</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">Dashboard</li>
                                        </ul>
                                    </div>
                                    <button class="au-btn au-btn-icon au-btn--green" type="button" data-toggle="modal" data-target="#mediumModal">
                                        <i class="zmdi zmdi-plus"></i>Tambah Perjalanan</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->

            <!-- STATISTIC-->
            <section class="statistic">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number"><?=hari_ini(); ?><br><?=Date("j F Y") ?></h2>
                                    <span class="desc">Hari ini</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number"><?=count($drivers); ?></h2>
                                    <span class="desc">Driver Tersedia</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-male-alt"></i>
                                    </div>
                                </div>
                            </div>                            
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number"><?=count($mobils); ?></h2>
                                    <span class="desc">Mobil Tersedia</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-car"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">Rp. 0</h2>
                                    <span class="desc">Bensin Digunakan</span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-gas-station"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->

            <section>
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div></div>
                        <div class="row">
                            <?php foreach($allmobils as $mobil){ ?>
                            <div class="col-md-3">
                                <aside class="profile-nav alt">
                                    <section class="card">
                                        <div class="card-header user-header alt <?php if($mobil['status']==0) echo "bg-success"; else if($mobil['status'] == 1) echo "bg-warning"; else echo "bg-danger"; ?>">
                                            <div class="media">
                                                <div class="media-body">
                                                    <h2 class="text-light display-6"><?=$mobil['plat']; ?> <?php if($mobil['status']==2) echo "(Rusak)";?></h2>
                                                    <p><?=$mobil['merk']; ?></p>
                                                </div>
                                            </div>
                                        </div>


                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item">
                                                <a href="#">
                                                    <i class="fa fa-tasks"></i> Total Perjalanan&nbsp;
                                                    <span class="badge badge-danger pull-right">0</span>
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <a href="#">
                                                    <i class="fa fa-gear"></i> Kilometer Terakhir&nbsp;
                                                    <span class="badge badge-primary pull-right">0</span>
                                                </a>
                                            </li>
                                        </ul>

                                    </section>
                                </aside>
                            </div>                       
                            <?php } ?>
                        </div>

                    </div>
                </div>
            </section>

            <!-- Modal -->
            <!-- modal medium -->
            <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="mediumModalLabel">Tambah Perjalanan</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <?=form_open('Home/processPerjalanan',['class'=>'form-horizontal']); ?>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="drivers" class="form-control-label">Pilih Pengemudi</label>
                                    </div>
                                    <div class="col col-md-9">
                                        <select name="driverId[]" id="multiple-select" multiple="" class="form-control" required="">
                                            <?php foreach($drivers as $driver){ ?>
                                            <option value="<?=$driver['id']; ?>"><?=$driver['nama'] ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="multiple-select" class=" form-control-label">Pilih Mobil</label>
                                    </div>
                                    <div class="col col-md-9">
                                        <select id="req" name="mobils[]"  multiple="" class="form-control" required="">
                                            <?php foreach($mobils as $mobil){ ?>
                                            <option value="<?=$mobil['id']; ?>"><?=$mobil['plat']." (".$mobil['merk'].")" ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div>
                                </div>                                                              
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="text-input" class=" form-control-label">Maksud Perjalanan</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <textarea id="maksud" name="maksud" id="textarea-input" rows="9" placeholder="" class="form-control"></textarea>
                                        <small class="form-text text-muted">sesuaikan dengan dokumen SPPD</small>
                                    </div>
                                </div> 
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="select" class=" form-control-label">Kota</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <select name="select" id="select" class="form-control">
                                            <?php foreach($kotas as $kota){ ?>
                                            <option value="<?=$kota['id']; ?>"><?=$kota['nama'] ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>                                                
                        
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <input type="submit" class="btn btn-primary" name="" value="Confirm">
                        </div>
                            </form>
                    </div>
                </div>
            </div>
                      
<!-- end document-->