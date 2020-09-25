<!-- BEGIN: MAIN -->
<div class="col-md-12">
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <!-- BEGIN: EDIT -->
    <div class="card">
        <div class="card-header bg-success">
            <h3 class="card-title"><i class="fas fa-cogs"></i> {PHP.L.Configuration}</h3>
        </div>
        <div class="card-body">
            {ADMIN_CONFIG_EDIT_CUSTOM}
            <form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
                <div class="table-responsive">
                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th class="w-25">{PHP.L.Parameter}</th>
                                <th class="w-auto">{PHP.L.Value}</th>
                                <th class="w-auto">{PHP.L.Action}</th>
                            </tr>
                        </thead>
                        <!-- BEGIN: ADMIN_CONFIG_ROW -->
                        <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
                        <tr>
                            <td colspan="3" class="bg-gray">
                                <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
                            </td>
                        </tr>
                        <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
                        <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
                        <tr>
                            <td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
                            <td >
                                <div class="btn-group form-inline">
                                    {ADMIN_CONFIG_ROW_CONFIG}
                                </div>
                                <div class="mt-2">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                            </td>
                            <td class="action text-center">
                                <div class="btn-group">
                                    <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="btn btn-success btn-sm">
                                        <i class="fas fa-sync"></i> <span>{PHP.L.Reset}</span>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <!-- END: ADMIN_CONFIG_ROW_OPTION -->
                        <!-- BEGIN: ADMIN_CONFIG_FIELDSET_END -->
                        <!-- END: ADMIN_CONFIG_FIELDSET_END -->
                        <!-- END: ADMIN_CONFIG_ROW -->
                        <tr>
                            <td colspan="3">
                                <div class="btn-group flex-wrap">
                                    <button type="submit" class="btn btn-md bg-success btn-sm"><i class="fas fa-sync"></i> {PHP.L.Update}</button>
                                    <!-- IF {PHP.o} == plug -->
                                    <a href="{PHP.p|cot_url('admin','m=extensions&a=details&pl=$this')}" class="btn btn-md btn-success btn-sm"><i class="fas fa-reply"></i> {PHP.L.Back}</a>
                                    <!-- ENDIF -->
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
    <!-- END: EDIT -->
</div>
<!-- BEGIN: DEFAULT -->
<!-- BEGIN: ADMIN_CONFIG_COL -->
<div class="col-md-4">
    <div class="card">
        <div class="card-header bg-success">
            <h3 class="card-title"><i class="fas fa-cog"></i> {ADMIN_CONFIG_COL_CAPTION}:</h3>
        </div>
        <div class="card-body">
            <div class="table-responsive" style="height: 540px;">
                <table class="table table-hover table-striped">
                    <tbody>
                        <!-- BEGIN: ADMIN_CONFIG_ROW -->
                        <tr>
                            <td>
                                <!-- IF {ADMIN_CONFIG_ROW_ICO} -->
                                <img src="{ADMIN_CONFIG_ROW_ICO}"/>
                                <!-- ELSE -->
                                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
                                <!-- ENDIF -->
                            </td>
                            <td>
                                <a href="{ADMIN_CONFIG_ROW_URL}" class="ajax"><b>{ADMIN_CONFIG_ROW_NAME}</b></a>
                                <!-- IF {ADMIN_CONFIG_ROW_DESC} -->
                                <p class="small">{ADMIN_CONFIG_ROW_DESC}</p>
                                <!-- ENDIF -->
                            </td>
                        </tr>
                        <!-- END: ADMIN_CONFIG_ROW -->
                    <tbody>
                </table>
            </div>
        </div>
    </div>
</div>                     
<!-- END: ADMIN_CONFIG_COL -->
<!-- END: DEFAULT -->
<!-- END: MAIN -->
