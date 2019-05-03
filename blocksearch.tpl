{**
 * Copyright (C) 2017-2019 thirty bees
 * Copyright (C) 2007-2016 PrestaShop SA
 *
 * thirty bees is an extension to the PrestaShop software by PrestaShop SA.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2017-2019 thirty bees
 * @copyright 2007-2016 PrestaShop SA
 * @license   Academic Free License (AFL 3.0)
 * PrestaShop is an internationally registered trademark of PrestaShop SA.
 *}

<!-- Block search module -->
<div id="search_block_left" class="block exclusive">
	<h4 class="title_block">{l s='Search' mod='blocksearch'}</h4>
	<form method="get" action="{$link->getPageLink('search', true)|escape:'html'}" id="searchbox">
		<p class="block_content">
			<label for="search_query_block">{l s='Search products:' mod='blocksearch'}</label>
			<input type="hidden" name="controller" value="search" />
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
			<input class="search_query" type="text" id="search_query_block" name="search_query" value="{$search_query|escape:'html':'UTF-8'|stripslashes}" />
			<input type="submit" id="search_button" class="button_mini" value="{l s='Go' mod='blocksearch'}" />
		</p>
	</form>
</div>
{include file="$self/blocksearch-instantsearch.tpl"}
<!-- /Block search module -->
