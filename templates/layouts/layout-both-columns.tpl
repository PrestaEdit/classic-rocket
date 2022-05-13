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
<!doctype html>
<html lang="{$language.iso_code}">

<head>
    {block name='head'}
        {include file='_partials/head.tpl'}
    {/block}
</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames}{block name='bodyClass'}{/block}">

{block name='hook_after_body_opening_tag'}
    {hook h='displayAfterBodyOpeningTag'}
{/block}


{block name='product_activation'}
    {include file='catalog/_partials/product-activation.tpl'}
{/block}


{block name='header'}
    {include file='_partials/header.tpl'}
{/block}


{block name='notifications'}
    {include file='_partials/notifications.tpl'}
{/block}
{block name='wrapper'}
    <div id="wrapper" class="{block name='wrapperClass'}o-wrapper{/block}">
        {hook h="displayWrapperTop"}
        {block name='breadcrumb'}
            {include file='_partials/breadcrumb.tpl'}
        {/block}
        {block name="displayBeforeColumns"}
        {* if need to wrap in row *}
        <div class="row">
            {/block}

            {block name="content_wrapper"}
                <main id="content-wrapper" class="{block name='contentWrapperClass'}col-lg-6{/block}">
                    {hook h="displayContentWrapperTop"}
                    {block name="content"}
                        <p>Hello world! This is HTML5 Boilerplate.</p>
                    {/block}
                    {hook h="displayContentWrapperBottom"}
                </main>
            {/block}

            {block name="left_column"}
                <aside id="left-column" class="{block name='leftColumnClass'}col-lg-3{/block}">
                    {if $page.page_name == 'product'}
                        {hook h='displayLeftColumnProduct'}
                    {else}
                        {hook h="displayLeftColumn"}
                    {/if}
                </aside>
            {/block}

            {block name="right_column"}
                <aside id="right-column" class="{block name='rightColumnClass'}col-lg-3{/block}">
                    {if $page.page_name == 'product'}
                        {hook h='displayRightColumnProduct'}
                    {else}
                        {hook h="displayRightColumn"}
                    {/if}
                </aside>
            {/block}
            {block name="displayAfterColumns"}
            {* if need to wrap in row => close div row*}
        </div>

        {block name='product_list_after_bottom'}
        {/block}

        {/block}
        {hook h="displayWrapperBottom"}
    </div>
{/block}

{block name="footer"}
    <footer id="footer" class="c-footer{block name='footerClass'}{/block}">
        {include file="_partials/footer.tpl"}
    </footer>
{/block}

{block name='offcanvas_modals'}
    {if $page.page_name == 'product'}
        {* for add to cart mobile sticky*}
        <div id="js-addcartsticky-bottom"></div>
    {/if}
    {* offcanvas search filter *}
    <div class="modal fade" id="offcanvas_search_filter" tabindex="-1" role="dialog" data-modal-hide-mobile>
        <div class="modal-dialog modal-dialog__offcanvas modal-dialog__offcanvas--right" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="{l s='Close' d='Shop.Theme.Global'}">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="_mobile_search_filters_wrapper"></div>
                </div>
                <div class="modal-footer">
                    <button class="btn_close-filter btn btn-outline-success btn-block ok" data-dismiss="modal"
                            aria-label="{l s='Close' d='Shop.Theme.Global'}">
                        {include file="_partials/icon.tpl" icon="check" class=""}
                        {l s='OK' d='Shop.Theme.Actions'}
                    </button>
                </div>
            </div>
        </div>
    </div>
    {* end search filter *}
    {* offcanvas menu *}
    <div class="modal fade" id="mobile_top_menu_wrapper" tabindex="-1" role="dialog" data-modal-hide-mobile>
        <div class="modal-dialog modal-dialog__offcanvas" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="{l s='Close' d='Shop.Theme.Global'}">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="js-top-menu top-menu-mobile" id="_mobile_top_menu"></div>
                    <div class="js-top-menu-bottom">
                        <div id="_mobile_currency_selector"></div>
                        <div id="_mobile_language_selector"></div>
                        <div id="_mobile_contact_link"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {* end offcanvas menu *}
{/block}
{block name='javascript_bottom'}
    {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
{/block}

{block name='hook_before_body_closing_tag'}
    {hook h='displayBeforeBodyClosingTag'}
{/block}
</body>

</html>
