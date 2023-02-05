<script>
    $(function () {ldelim}
        $('#youtubeBlockSettings').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
        {rdelim});
</script>

<form
        class="pkp_form"
        id="youtubeBlockSettings"
        method="POST"
        action="{url router=$smarty.const.ROUTE_COMPONENT op="manage" category="blocks" plugin=$pluginName verb="settings" save=true}"
>
    <!-- Always add the csrf token to secure your form -->
    {csrf}

    {fbvFormArea}
<div class="pkp_notification">
    <div class="notifyWarning">
        {translate key="Plugin youtubeBlock. Para compartilhar um vídeo na página da revista
			é necessário copiar o link do video do youtube e colar na aba de link:"}
            </div>
        </div>
		{fbvFormSection title="Se julgar necessário, dê um título para o vídeo:"}
			{fbvElement type="text" id="titulo" value=$titulo}
		{/fbvFormSection}
		{fbvFormSection title="Cole o link do vídeo aqui:"}
			{fbvElement type="text" id="link" value=$link}
            
		{/fbvFormSection}
		{fbvFormSection title="Se julgar necessário, escreva uma descrição para o vídeo:"}
			{fbvElement type="text" id="descricao" value=$descricao}
		{/fbvFormSection}
					
		{fbvFormSection title="Largura:"}
		<div class="notifyWarning">
        {translate key="O recomendado é entre 240 e 360"}
            </div>
			{fbvElement type="text" id="width" value=$width}
		{/fbvFormSection}
		{fbvFormSection title="altura:"}
				<div class="notifyWarning">
        {translate key="O recomendado é entre 142 e 210"}
            </div>
			{fbvElement type="text" id="height" value=$height}
		{/fbvFormSection}
		
    {/fbvFormArea}
    {fbvFormButtons submitText="common.save"}
    
    
    
    	
</form>
