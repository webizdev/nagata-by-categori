<?php
use Illuminate\Support\Facades\Artisan;
require __DIR__.'/vendor/autoload.php';
$app = require_once __DIR__.'/bootstrap/app.php';

$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

echo "Mulai Migrasi Database...<br>";

try {
    Artisan::call('migrate', ['--force' => true]);
    echo "<pre>" . Artisan::output() . "</pre>";
    echo "Selesai! Database Anda sekarang sudah siap.";
} catch (\Exception $e) {
    echo "Error: " . $e->getMessage();
}

// Opsional: Hapus file ini secara otomatis setelah dijalankan untuk keamanan
// unlink(__FILE__);
