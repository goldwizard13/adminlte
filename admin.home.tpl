<!-- BEGIN: MAIN -->
{ADMIN_HELP}
<!-- BEGIN: UPDATE -->

<div class="col-md-12">
    <div class="alert alert-danger">
        <h4>{PHP.L.adminqv_update_notice}:</h4>
        <p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
    </div>
</div>

<!-- END: UPDATE -->

<!-- IF {ERROR_ROW_MSG} -->

<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>

<!-- ENDIF -->

<div class="col-md-8">
    <div class="row">
    <!-- BEGIN: MAINPANEL -->
    {ADMIN_HOME_MAINPANEL}
    <!-- END: MAINPANEL -->
    <!-- IF {PHP.cot_plugins_active.pagelist} -->
    <div class="block">
        <h5><i class="fa fa-comments"></i> {PHP.R.Topbest} {PHP.L.Topbestpages}</h5>
        {PHP.R.Topbest|pagelist('pagelist.admin',$this,'page_count DESC','page_count > 0','','','','TRUE','','TRUE')}
        </div>
        <div class="block">
            <h5><i class="fa fa-comments"></i> {PHP.R.Toprecent} {PHP.L.Toprecentpages} {PHP.L.Within} {PHP.R.Toprecent|cot_declension($this, 'Days')}</h5>
            {PHP.R.Toprecent|pagelist('pagelist.admin',$this,'page_count DESC','page_date > (UNIX_TIMESTAMP() - 864000)','','','','TRUE','','TRUE')}
            </div>
            <div class="block">
                <h5><i class="fa fa-comments"></i> {PHP.L.yukon-newpages}</h5>
                {PHP.R.Toprecent|pagelist('pagelist.admin',$this,'page_date DESC','','','','','TRUE','','TRUE')}
                </div>
                <!-- ENDIF -->
            </div>
      </div>
            <div class="col-md-4">
                 <!-- BEGIN: SIDEPANEL -->
    {ADMIN_HOME_SIDEPANEL}
    <!-- END: SIDEPANEL -->
<!-- IF {PHP.cot_plugins_active.pagecom} AND {PHP.cot_plugins_active.comments} -->
                {PHP|pagecom('pagecom.admin','5','0','date','','','0')}
                    <!-- ENDIF -->
                    <!-- IF {PHP.cot_plugins_active.userinfo} -->
                    <div class="block">
                        {PHP|userinfo_lastseen('userinfo.lastseen')}
                        </div>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_plugins_active.adminstats} -->
                        <div class="card">
                            <div class="card-header bg-info">
                                <h3 class="card-title"><i class="fas fa-code"></i> {PHP.L.Database}:</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <tr>
                                            <td>{PHP.adminstats.database.title}</td>
                                            <td class="text-right">{PHP.adminstats.database.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.mysqlcharset.title}</td>
                                            <td class="text-right">{PHP.adminstats.mysqlcharset.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.db_counts.title}</td>
                                            <td class="text-right">{PHP.adminstats.db_counts.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.db_rows.title}</td>
                                            <td class="text-right">{PHP.adminstats.db_rows.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.db_indexsize.title}</td>
                                            <td class="text-right">{PHP.adminstats.db_indexsize.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.db_datassize.title}</td>
                                            <td class="text-right">{PHP.adminstats.db_datassize.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.db_totalsize.title}</td>
                                            <td class="text-right">{PHP.adminstats.db_totalsize.value}</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header bg-info">
                                <h3 class="card-title"><i class="fas fa-puzzle-piece"></i> {PHP.L.Extensions}:</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <tr>
                                            <td>{PHP.adminstats.active_modules.title}</td>
                                            <td class="text-right">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.active_plugins.title}</td>
                                            <td class="text-right">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.active_hooks.title}</td>
                                            <td class="text-right">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>    
                        <div class="card">
                            <div class="card-header bg-info">
                                <h3 class="card-title"><i class="fas fa-code"></i> {PHP.L.Cache}:</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <tr>
                                            <td>{PHP.adminstats.cache.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.cache.value}</td>
                                        </tr>
                                        <!-- IF {PHP.adminstats.cache.value} != {PHP.L.Disabled} -->
                                        <tr>
                                            <td>{PHP.adminstats.cache_drv.title}</td>
                                            <td class="text-right">{PHP.adminstats.cache_drv.value}</td>
                                        </tr>
                                        <!-- ENDIF -->
                                        <tr>
                                            <td>{PHP.adminstats.xtpl_cache.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.xtpl_cache.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.html_cleanup.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.html_cleanup.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.cache_index.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.cache_index.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.cache_page.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.cache_page.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.cache_forums.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.cache_forums.value}</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header bg-info">
                                <h3 class="card-title"><i class="fas fa-code"></i> {PHP.L.Security}:</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">         
                                        <tr>
                                            <td>{PHP.adminstats.debug_mode.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.debug_mode.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.display_errors.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.display_errors.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.ipcheck.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.ipcheck.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.authcache.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.authcache.value}</td>
                                        </tr>
                                        <tr>
                                            <td>{PHP.adminstats.useremailduplicate.title}</td>
                                            <td class="text-right lower">{PHP.adminstats.useremailduplicate.value}</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div> 
                        <!-- ENDIF -->
                    </div>


                    <!-- END: MAIN -->