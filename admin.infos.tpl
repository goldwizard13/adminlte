<!-- BEGIN: MAIN -->
<div class="col-md-12">
    <div class="card">
        <div class="card-header rounded-0 bg-purple">
            <h3 class="card-title">{PHP.L.Info}:</h3>
            <div class="card-tools">
                <button type="button" class="btn bg-purple btn-sm" data-card-widget="collapse"><i class="fas fa-plus"></i></button>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover table-striped">
                    <tr>
                        <td class="w-auto">{PHP.L.adm_phpver}</td>
                        <td class="text-right width40">{ADMIN_INFOS_PHPVER}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_zendver}</td>
                        <td class="text-right">{ADMIN_INFOS_ZENDVER}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_interface}</td>
                        <td class="text-right">{ADMIN_INFOS_INTERFACE}</td>
                    </tr>
                    <!-- IF {ADMIN_INFOS_CACHEDRIVERS} -->
                    <tr>
                        <td>{PHP.L.adm_cachedrivers}</td>
                        <td class="text-right">{ADMIN_INFOS_CACHEDRIVERS}</td>
                    </tr>
                    <!-- ENDIF -->
                    <tr>
                        <td>{PHP.L.adm_os}</td>
                        <td class="text-right">{ADMIN_INFOS_OS}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time1}</td>
                        <td class="text-right">{ADMIN_INFOS_DATE}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time2}</td>
                        <td class="text-right">{ADMIN_INFOS_GMDATE} GMT</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time3}</td>
                        <td class="text-right">{ADMIN_INFOS_GMTTIME}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.adm_time4}</td>
                        <td class="text-right">{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->