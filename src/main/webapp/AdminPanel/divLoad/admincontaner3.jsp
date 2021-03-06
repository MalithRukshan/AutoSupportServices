<div class="row">
    <!-- TWITTER PANEL -->
    <div class="col-md-4 mb">
        <div class="darkblue-panel pn">
            <div class="darkblue-header">
                <h5>DROPBOX STATICS</h5>
            </div>
            <canvas id="serverstatus02" height="120" width="120"></canvas>
            <script>
                var doughnutData = [
                    {
                        value: 60,
                        color: "#68dff0"
                    },
                    {
                        value: 40,
                        color: "#444c57"
                    }
                ];
                var myDoughnut = new Chart(document.getElementById("serverstatus02").getContext("2d")).Doughnut(doughnutData);
            </script>
            <p>April 17, 2014</p>
            <footer>
                <div class="pull-left">
                    <h5><i class="fa fa-hdd-o"></i> 17 GB</h5>
                </div>
                <div class="pull-right">
                    <h5>60% Used</h5>
                </div>
            </footer>
        </div><! -- /darkblue panel -->
    </div><!-- /col-md-4 -->


    <div class="col-md-4 mb">
        <!-- INSTAGRAM PANEL -->
        <div class="instagram-panel pn">
            <i class="fa fa-instagram fa-4x"></i>
            <p>@THISISYOU<br/>
                5 min. ago
            </p>
            <p><i class="fa fa-comment"></i> 18 | <i class="fa fa-heart"></i> 49</p>
        </div>
    </div><!-- /col-md-4 -->

    <div class="col-md-4 col-sm-4 mb">
        <!-- REVENUE PANEL -->
        <div class="darkblue-panel pn">
            <div class="darkblue-header">
                <h5>REVENUE</h5>
            </div>
            <div class="chart mt">
                <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
            </div>
            <p class="mt"><b>$ 17,980</b><br/>Month Income</p>
        </div>
    </div><!-- /col-md-4 -->

</div><!-- /row -->
