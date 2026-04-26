<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'category_id',
        'name',
        'slug',
        'sku',
        'description',
        'technical_specs',
        'price',
        'image',
        'is_active',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function specifications()
    {
        return $this->hasMany(ProductSpecification.php);
    }

    public function motorcycles()
    {
        return $this->belongsToMany(MotorcycleModel::class, 'product_motorcycle', 'product_id', 'motorcycle_model_id')
                    ->withPivot('part_number');
    }
}
