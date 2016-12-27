<#macro page url totalPage=3 rows=6 nowPage=1 pageSize=5 startIndex=1 endIndex=totalPage>
	
	<#if nowPage>
		<#assign nowPage=1/>
	</#if>
	<#assign startIndex=nowPage-1/>
	<#if startIndex<=0>
		<#assign startIndex=1/>	
	</#if>
	
	<#if 3<totalPage>
		<#assign endIndex=startIndex+2/>
		<#else>
			<#assign endIndex=totalPage/>
	</#if>

	<#if totalPage < endIndex>
		<#assign endIndex=totalPage/>
	</#if>
		<#if 3<totalPage>
			<#assign startIndex=endIndex-2/>
		</#if>
	
	<div class="pagination paginatioon--full">
	<#if nowPage==1>
		<span class="pagination__first">首页<span> 
	<#else>
		<a class="pagination__prev" href="${url}?nowPage=${nowPage-1}">上一页</a>
	</#if>
	
	<#if nowPage==totalPage>
		 <span class="pagination__last">尾页</span>
	<#else>
		<a class="pagination__next" href="${url}?nowPage=${nowPage+1}">下一页</a>
	</#if>
  	</div>
	
</#macro>
