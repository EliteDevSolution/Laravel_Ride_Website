<?php


namespace App\Http\ViewComposers\User;


use App\ServiceType;
use Illuminate\View\View;

class AppComposer
{
    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return vo id
     */
    public function compose(View $view)
    {
        $serviceTypes = ServiceType::all();
        $view->with('serviceTypes', $serviceTypes);
    }
}