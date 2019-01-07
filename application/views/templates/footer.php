            <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 B4T IT.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="<?=base_url(); ?>assets/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<?=base_url(); ?>assets/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="<?=base_url(); ?>assets/vendor/slick/slick.min.js">
    </script>
    <script src="<?=base_url(); ?>assets/vendor/wow/wow.min.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/animsition/animsition.min.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="<?=base_url(); ?>assets/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="<?=base_url(); ?>assets/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/select2/select2.min.js">
    </script>
    <script src="<?=base_url(); ?>assets/vendor/vector-map/jquery.vmap.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/vector-map/jquery.vmap.min.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="<?=base_url(); ?>assets/vendor/vector-map/jquery.vmap.world.js"></script>

    <!-- Main JS-->
    <script src="<?=base_url(); ?>assets/js/main.js"></script>
    <script >
        $(document).ready(function() {
            $('#datatables').DataTable({
                "pagingType": "full_numbers",
                "lengthMenu": [
                    [10, 25, 50, -1],
                    [10, 25, 50, "All"]
                ],
                responsive: true,
                language: {
                    search: "_INPUT_",
                    searchPlaceholder: "Search records",
                }

            });


            var table = $('#datatables').DataTable();

            // Edit record
            table.on('click', '.edit', function() {
                $tr = $(this).closest('tr');

                var data = table.row($tr).data();
                alert('You press on Row: ' + data[0] + ' ' + data[1] + ' ' + data[2] + '\'s row.');
            });

            // Delete a record
            table.on('click', '.remove', function(e) {
                $tr = $(this).closest('tr');
                table.row($tr).remove().draw();
                e.preventDefault();
            });

            //Like record
            table.on('click', '.like', function() {
                alert('You clicked on Like button');
            });

            $('.card .material-datatables label').addClass('form-group');
        });
    </script>

</body>

</html>
<!-- end document-->