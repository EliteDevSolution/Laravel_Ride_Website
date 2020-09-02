<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class TransferPaymentCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'ateamtaxi:transfer-payments';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'To transfer amount into account of stakeholders.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
    }
}
