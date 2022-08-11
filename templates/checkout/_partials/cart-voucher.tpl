{**
 * 2007-2019 PrestaShop and Contributors
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
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{if $cart.vouchers.allowed}
    {block name='cart_voucher'}
        <div class="u-txt-sm block-promo /js cart-voucher">
            {if $cart.vouchers.added}
                {block name='cart_voucher_list'}
                    <ul class="promo-name">
                        {foreach from=$cart.vouchers.added item=voucher}
                            <li class="cart-summary-line">
                                <span class="label small">{$voucher.name}</span>
                                <div class="">
                                    <span>{$voucher.reduction_formatted}</span>
                                    <a href="{$voucher.delete_url}" data-link-action="remove-voucher">
                                        {include file="_partials/icon.tpl" icon="trash-fill"}
                                    </a>
                                </div>
                            </li>
                        {/foreach}
                    </ul>
                {/block}
            {/if}

            <p class="promo-code-button display-promo{if $cart.discounts|count > 0} with-discounts{/if}">
                <a class="u-txt-underline u-txt-black collapse-button" href="#promo-code"
                   data-toggle="collapse"{if $cart.discounts|count > 0}{/if}>
                    {l s='Have a promo code?' d='Shop.Theme.Checkout'}
                </a>
            </p>

            <div id="promo-code" class="promo-code collapse{if $cart.discounts|count > 0}{/if}">
                <div class="promo-code promo-code__content u-mb-2">
                    {block name='cart_voucher_form'}
                        <form class="form__add-voucher" action="{$urls.pages.cart}" data-link-action="add-voucher"
                              method="post">
                            <input type="hidden" name="token" value="{$static_token}">
                            <input type="hidden" name="addDiscount" value="1">
                            <div class="input-group">
                                <input class="form-control u-mb-1" type="text" name="discount_name"
                                       placeholder="{l s='Promo code' d='Shop.Theme.Checkout'}">
                                <div class="u-txt-center u-mb-1 input-group-append">
                                    <button type="submit"
                                            class="btn btn-primary">{l s='Add' d='Shop.Theme.Actions'}</button>
                                </div>
                            </div>
                        </form>
                    {/block}

                    {block name='cart_voucher_notifications'}
                        <div class="alert alert-danger u-txt-red u-mb-1 /js js-error" role="alert">
                            {include file="_partials/icon.tpl" icon="exclamation-circle"}
                            <span class="u-ml-1 /js js-error-text"></span>
                        </div>
                    {/block}

                    <div class="u-txt-center">
                        <a class="collapse-button promo-code-button cancel-promo" role="button"
                           data-toggle="collapse" href="#promo-code" aria-expanded="true"
                           aria-controls="promo-code">
                            {l s='Close' d='Shop.Theme.Checkout'}
                        </a>
                    </div>
                </div>
            </div>

            {if $cart.discounts|count > 0}
                <div class="c-panel c-panel--sm c-panel--border c-panel--rounded">
                    <p class="u-mb-1 block-promo promo-highlighted">
                        {l s='Take advantage of our exclusive offers:' d='Shop.Theme.Actions'}
                    </p>
                    <ul class="js-discount promo-discounts">
                        {foreach from=$cart.discounts item=discount}
                            <li>
                                <span class="u-font-weight-bold u-txt-underline u-l-o code">{$discount.code}</span>{if $discount.name} - {$discount.name}{/if}
                            </li>
                        {/foreach}
                    </ul>
                </div>
            {/if}
            <hr>
        </div>
    {/block}
{/if}
