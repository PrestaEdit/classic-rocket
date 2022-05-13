{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div id="js-product-list-top" class="o-layout o-layout--center-y u-mb-2">
    <div class="u-visible-desktop">
        {if $listing.pagination.total_items > 1}
            <p class="u-txt-sm u-mb-0">{l s='%product_count% Produits' d='Shop.Theme.Catalog' sprintf=['%product_count%' => $listing.pagination.total_items]}</p>
        {elseif $listing.pagination.total_items > 0}
            <p class="u-txt-sm u-mb-0">{l s='1 Produit' d='Shop.Theme.Catalog'}</p>
        {/if}
    </div>

    <div class="sort-by-row u-d-flex u-align-items-center">
        {block name='sort_by'}
            {include file='catalog/_partials/sort-orders.tpl' sort_orders=$listing.sort_orders}
        {/block}

        {if !empty($listing.rendered_facets)}
            <button type="button" id="search_filter_toggler" class="btn btn-secondary u-ml-1 u-visible-mobile"
                    data-target="#offcanvas_search_filter" data-toggle="modal">
                {l s='Filter' d='Shop.Theme.Actions'}
            </button>
        {/if}
    </div>

{*    <div class="u-visible-mobile text-sm-center u-mt-1">*}
{*        {l s='Showing %from%-%to% of %total% item(s)' d='Shop.Theme.Catalog' sprintf=[*}
{*        '%from%' => $listing.pagination.items_shown_from ,*}
{*        '%to%' => $listing.pagination.items_shown_to,*}
{*        '%total%' => $listing.pagination.total_items*}
{*        ]}*}
{*    </div>*}
</div>


