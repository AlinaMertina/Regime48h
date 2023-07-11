
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Suggestion de regime</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                            <?php if(isset($regimeA)) { for ($i=0;$i<count($regimeA);$i++) { ?>
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-primary shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"><?php echo $regimeA[$i]['nomRegime'] ?></div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $regimeA[$i]['montant'] ?></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php } } ?>
                        <?php if(isset($regimeP)) { for ($i=0;$i<count($regimeP);$i++) { ?>
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1"><?php echo $regimeP[$i]['nomregime'] ?></div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $regimeP[$i]['montant'] ?></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php } } ?>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Statistique et progres</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Gains</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <h1><?php if(isset($argent)){ echo $argent; } ?> Ar</h1>
                                </div>
                            </div>
                        </div>
                    </div>
        <div class="row">

            