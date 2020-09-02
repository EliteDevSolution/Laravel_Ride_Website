@extends('admin.layout.base')

@section('title', 'Payment Settings ')

@section('content')

<div class="content-area py-1">
    <div class="container-fluid">
        <div class="box box-block bg-white">
            <form action="{{route('admin.settings.payment.store')}}" method="POST">
                {{csrf_field()}}
                <h5>Payment Modes</h5>
                <div class="card card-block card-inverse card-primary">
                    <blockquote class="card-blockquote">
                        <i class="fa fa-3x fa-cc-stripe pull-right"></i>
                        <div class="form-group row">
                            <div class="col-xs-4">
                                <label for="stripe_secret_key" class="col-form-label">
                                    Stripe (Card Payments)
                                </label>
                            </div>
                            <div class="col-xs-6">
                                <input @if(Setting::get('CARD') == 1) checked  @endif  name="CARD" id="stripe_check" onchange="cardselect()" type="checkbox" class="js-switch" data-color="#43b968">
                            </div>
                        </div>
                        <div id="card_field" @if(Setting::get('CARD') == 0) style="display: none;" @endif>
                            <div class="form-group row">
                                <label for="stripe_secret_key" class="col-xs-4 col-form-label">Stripe Secret key</label>
                                <div class="col-xs-8">
                                    <input class="form-control" type="text" value="{{Setting::get('stripe_secret_key', '') }}" name="stripe_secret_key" id="stripe_secret_key"  placeholder="Stripe Secret key">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="stripe_publishable_key" class="col-xs-4 col-form-label">Stripe Publishable key</label>
                                <div class="col-xs-8">
                                    <input class="form-control" type="text" value="{{Setting::get('stripe_publishable_key', '') }}" name="stripe_publishable_key" id="stripe_publishable_key"  placeholder="Stripe Publishable key">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="stripe_provider_id" class="col-xs-4 col-form-label">Provider ID</label>
                                <div class="col-xs-8">
                                    <input class="form-control" type="text" value="{{Setting::get('stripe_provider_id', '') }}" name="stripe_provider_id" id="stripe_provider_id"  placeholder="Provider ID">
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="stripe_escrow_id" class="col-xs-4 col-form-label">Escrow ID</label>
                                <div class="col-xs-8">
                                    <input class="form-control" type="text" value="{{Setting::get('stripe_escrow_id', '') }}" name="stripe_escrow_id" id="stripe_escrow_id"  placeholder="Escrow ID">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="stripe_shareholders_id" class="col-xs-4 col-form-label">Shareholders ID</label>
                                <div class="col-xs-8">
                                    <input class="form-control" type="text" value="{{Setting::get('stripe_shareholders_id', '') }}" name="stripe_shareholders_id" id="stripe_shareholders_id"  placeholder="Shareholders ID">
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="stripe_ins_id" class="col-xs-4 col-form-label">Ins ID</label>
                                <div class="col-xs-8">
                                    <input class="form-control" type="text" value="{{Setting::get('stripe_ins_id', '') }}" name="stripe_ins_id" id="stripe_ins_id"  placeholder="Ins ID">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="stripe_partners_id" class="col-xs-4 col-form-label">Partners ID</label>
                                <div class="col-xs-8">
                                    <input class="form-control" type="text" value="{{Setting::get('stripe_partners_id', '') }}" name="stripe_partners_id" id="stripe_partners_id"  placeholder="Partners ID">
                                </div>
                            </div>

                        </div>
                    </blockquote>
                </div>

                <div class="card card-block card-inverse card-primary">
                    <blockquote class="card-blockquote">
                        <i class="fa fa-3x fa-money pull-right"></i>
                        <div class="form-group row">
                            <div class="col-xs-4">
                                <label for="cash-payments" class="col-form-label">
                                    Cash Payments
                                </label>
                            </div>
                            <div class="col-xs-6">
                                <input @if(Setting::get('CASH') == 1) checked  @endif name="CASH" id="cash-payments" onchange="cardselect()" type="checkbox" class="js-switch" data-color="#43b968">
                            </div>
                        </div>
                    </blockquote>
                </div>
                <h5>Payment Settings</h5>

                <div class="card card-block card-inverse card-info">
                    <blockquote class="card-blockquote">
                        <div class="form-group row">
                            <label for="daily_target" class="col-xs-4 col-form-label">Daily Target</label>
                            <div class="col-xs-8">
                                <input class="form-control" 
                                    type="number"
                                    value="{{ Setting::get('daily_target', '0')  }}"
                                    id="daily_target"
                                    name="daily_target"
                                    min="0"
                                    required
                                    placeholder="Daily Target">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="tax_percentage" class="col-xs-4 col-form-label">Tax percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                    type="number"
                                    value="{{ Setting::get('tax_percentage', '0')  }}"
                                    id="tax_percentage"
                                    name="tax_percentage"
                                    min="0"
                                    max="100"
                                    placeholder="Tax Percentage">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="surge_trigger" class="col-xs-4 col-form-label">Surge Trigger Point</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                    type="number"
                                    value="{{ Setting::get('surge_trigger', '')  }}"
                                    id="surge_trigger"
                                    name="surge_trigger"
                                    min="0"
                                    required
                                    placeholder="Surge Trigger Point">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="surge_percentage" class="col-xs-4 col-form-label">Surge percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                    type="number"
                                    value="{{ Setting::get('surge_percentage', '0')  }}"
                                    id="surge_percentage"
                                    name="surge_percentage"
                                    min="0"
                                    max="100"
                                    placeholder="Surge percentage">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="commission_percentage" class="col-xs-4 col-form-label">Commission percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                    type="number"
                                    value="{{ Setting::get('commission_percentage', '0') }}"
                                    id="commission_percentage"
                                    name="commission_percentage"
                                    min="0"
                                    max="100"
                                    placeholder="Commission percentage">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="booking_prefix" class="col-xs-4 col-form-label">Booking ID Prefix</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                    type="text"
                                    value="{{ Setting::get('booking_prefix', '0') }}"
                                    id="booking_prefix"
                                    name="booking_prefix"
                                    min="0"
                                    max="4"
                                    placeholder="Booking ID Prefix">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="base_price" class="col-xs-4 col-form-label">
                                Currency ( <strong>{{ Setting::get('currency', '$')  }} </strong>)
                            </label>
                            <div class="col-xs-8">
                                <select name="currency" class="form-control" required>
                                    <option @if(Setting::get('currency') == "$") selected @endif value="$">US Dollar (USD)</option>
                                    <option @if(Setting::get('currency') == "₹") selected @endif value="₹"> Indian Rupee (INR)</option>
                                    <option @if(Setting::get('currency') == "د.ك") selected @endif value="د.ك">Kuwaiti Dinar (KWD)</option>
                                    <option @if(Setting::get('currency') == "د.ب") selected @endif value="د.ب">Bahraini Dinar (BHD)</option>
                                    <option @if(Setting::get('currency') == "﷼") selected @endif value="﷼">Omani Rial (OMR)</option>
                                    <option @if(Setting::get('currency') == "£") selected @endif value="£">British Pound (GBP)</option>
                                    <option @if(Setting::get('currency') == "€") selected @endif value="€">Euro (EUR)</option>
                                    <option @if(Setting::get('currency') == "CHF") selected @endif value="CHF">Swiss Franc (CHF)</option>
                                    <option @if(Setting::get('currency') == "ل.د") selected @endif value="ل.د">Libyan Dinar (LYD)</option>
                                    <option @if(Setting::get('currency') == "B$") selected @endif value="B$">Bruneian Dollar (BND)</option>
                                    <option @if(Setting::get('currency') == "S$") selected @endif value="S$">Singapore Dollar (SGD)</option>
                                    <option @if(Setting::get('currency') == "AU$") selected @endif value="AU$"> Australian Dollar (AUD)</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row" style="display: none;">
                            <label for="company_percentage" class="col-xs-4 col-form-label">Company percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                       type="number"
                                       value="{{ Setting::get('company_percentage', '0') }}"
                                       id="company_percentage"
                                       name="company_percentage"
                                       min="0"
                                       max="100"
                                       placeholder="Company percentage">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="provider_percentage" class="col-xs-4 col-form-label">Provider percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                       type="number"
                                       value="{{ Setting::get('provider_percentage', '0') }}"
                                       id="provider_percentage"
                                       name="provider_percentage"
                                       min="0"
                                       max="100"
                                       placeholder="Provider percentage">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="escrow_percentage" class="col-xs-4 col-form-label">Escrow percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                       type="number"
                                       value="{{ Setting::get('escrow_percentage', '0') }}"
                                       id="escrow_percentage"
                                       name="escrow_percentage"
                                       min="0"
                                       max="100"
                                       placeholder="Escrow percentage">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="fleet_owner_percentage" class="col-xs-4 col-form-label">Shareholders percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                       type="number"
                                       value="{{ Setting::get('fleet_owner_percentage', '0') }}"
                                       id="fleet_owner_percentage"
                                       name="fleet_owner_percentage"
                                       min="0"
                                       max="100"
                                       placeholder="Shareholders Owner percentage">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="ins_percentage" class="col-xs-4 col-form-label">Ins percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                       type="number"
                                       value="{{ Setting::get('ins_percentage', '0') }}"
                                       id="ins_percentage"
                                       name="ins_percentage"
                                       min="0"
                                       max="100"
                                       placeholder="Ins percentage">
                            </div>
                        </div>

                        

                        <div class="form-group row">
                            <label for="partners_percentage" class="col-xs-4 col-form-label">Partners percentage(%)</label>
                            <div class="col-xs-8">
                                <input class="form-control"
                                       type="number"
                                       value="{{ Setting::get('partners_percentage', '0') }}"
                                       id="partners_percentage"
                                       name="partners_percentage"
                                       min="0"
                                       max="100"
                                       placeholder="Partners percentage">
                            </div>
                        </div>

                        
                    </blockquote>
                </div>

                <div class="form-group row">
                    <div class="col-xs-4">
                        <a href="{{ route('admin.index') }}" class="btn btn-warning btn-block">Back</a>
                    </div>
                    <div class="offset-xs-4 col-xs-4">
                        <button type="submit" class="btn btn-primary btn-block">Update Site Settings</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script type="text/javascript">
function cardselect()
{
    if($('#stripe_check').is(":checked")) {
        $("#card_field").fadeIn(700);
    } else {
        $("#card_field").fadeOut(700);
    }
}
</script>
@endsection