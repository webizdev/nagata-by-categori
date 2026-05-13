@extends('layouts.app')

@section('title', 'Katalog Produk - Nagata Daytona')

@section('content')
<!-- Page Header -->
<section class="bg-daytona-navy py-12 relative overflow-hidden">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div class="flex flex-col md:flex-row md:items-center justify-between gap-6">
            <div>
                <h2 class="text-daytona-orange font-black uppercase tracking-[0.4em] text-[10px] mb-2">Performance Catalog</h2>
                <h1 class="text-white text-3xl font-black italic tracking-tighter uppercase leading-none">
                    Pilih Kategori <span class="text-daytona-orange">Untuk Menampilkan Produk</span>
                </h1>
            </div>
            @if($activeCategory)
                <div class="bg-white/5 border border-white/10 px-6 py-3 rounded-sm flex items-center space-x-3">
                    <span class="text-[10px] font-black uppercase text-slate-400 tracking-widest">Filter:</span>
                    <span class="text-daytona-orange font-bold text-sm uppercase tracking-wider">{{ $activeCategory->name }}</span>
                    <a href="{{ route('products.index') }}" class="text-white/40 hover:text-white transition-colors">
                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                    </a>
                </div>
            @endif
        </div>
    </div>
</section>

<section class="py-16 bg-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex flex-col lg:flex-row gap-12">
            
            <!-- Sidebar: 3-Level Category Filter -->
            <aside class="w-full lg:w-72 shrink-0">
                <div class="sticky top-28 space-y-8">
                    <div>
                        <h3 class="text-sm font-black uppercase tracking-[0.2em] text-slate-900 border-l-4 border-daytona-orange pl-4 mb-8 leading-none">Categories</h3>
                        
                        <div class="space-y-2">
                            @foreach($categories as $lvl1)
                            <a href="{{ route('products.index', ['category' => $lvl1->slug]) }}" 
                               class="flex items-center justify-between group p-3 rounded-sm border border-slate-100 transition-all duration-300 {{ (request('category') == $lvl1->slug || ($activeCategory && $activeCategory->parent_id == $lvl1->id) || ($activeCategory && $activeCategory->parent && $activeCategory->parent->parent_id == $lvl1->id)) ? 'bg-daytona-navy text-white border-daytona-navy shadow-lg shadow-daytona-navy/20' : 'bg-white text-slate-700 hover:border-daytona-orange hover:text-daytona-orange' }}">
                                <span class="text-xs font-black uppercase tracking-widest">{{ $lvl1->name }}</span>
                                <svg class="w-4 h-4 transition-transform duration-300 group-hover:translate-x-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M9 5l7 7-7 7"></path>
                                </svg>
                            </a>
                            @endforeach
                        </div>

                    </div>

                    {{-- Find My Part Widget --}}
                    <div>
                        <h3 class="text-sm font-black uppercase tracking-[0.2em] text-slate-900 border-l-4 border-daytona-orange pl-4 mb-6 leading-none">Find My Part</h3>
                        <x-find-my-part :motorcyclesByBrand="$motorcyclesByBrand" :dark="false" />
                    </div>

                </div>
            </aside>


            <!-- Product Grid -->
            <div class="flex-1">
                
                {{-- Hierarchical Horizontal Category Drill-down --}}
                @if($categoryPath->isNotEmpty())
                <div class="mb-12 space-y-4">
                    @php
                        $lvl1 = $categoryPath->get(0);
                        $lvl2 = $categoryPath->get(1);
                        $lvl3 = $categoryPath->get(2);
                    @endphp

                    {{-- Level 2 Bar --}}
                    @if($lvl1 && $lvl1->children->count() > 0)
                    <div class="flex flex-wrap items-center gap-2">
                        <span class="text-[10px] font-black uppercase text-slate-400 tracking-widest mr-2">Part Category:</span>
                        @if($lvl2)
                            {{-- If Level 2 is selected, only show it (as per "collapse" request) --}}
                            <a href="{{ route('products.index', ['category' => $lvl1->slug]) }}" 
                               class="bg-daytona-navy text-white px-5 py-2.5 rounded-sm text-xs font-black uppercase tracking-widest flex items-center gap-2 shadow-lg shadow-daytona-navy/20">
                                <span>{{ $lvl2->name }}</span>
                                <svg class="w-3 h-3 text-daytona-orange" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M6 18L18 6M6 6l12 12"></path></svg>
                            </a>
                        @else
                            {{-- Otherwise show all Level 2 children --}}
                            @foreach($lvl1->children as $child)
                            <a href="{{ route('products.index', ['category' => $child->slug]) }}" 
                               class="bg-slate-50 text-slate-700 border border-slate-100 px-5 py-2.5 rounded-sm text-xs font-black uppercase tracking-widest hover:border-daytona-orange hover:text-daytona-orange transition-all duration-300">
                                {{ $child->name }}
                            </a>
                            @endforeach
                        @endif
                    </div>
                    @endif

                    {{-- Level 3 Bar --}}
                    @if($lvl2 && $lvl2->children->count() > 0)
                    <div class="flex flex-wrap items-center gap-2 pl-4 border-l-2 border-slate-100">
                        <span class="text-[10px] font-black uppercase text-slate-400 tracking-widest mr-2">Type:</span>
                        @if($lvl3)
                            {{-- If Level 3 is selected, show only it --}}
                            <a href="{{ route('products.index', ['category' => $lvl2->slug]) }}" 
                               class="bg-daytona-orange text-white px-5 py-2.5 rounded-sm text-xs font-black uppercase tracking-widest flex items-center gap-2 shadow-lg shadow-daytona-orange/20">
                                <span>{{ $lvl3->name }}</span>
                                <svg class="w-3 h-3 text-daytona-navy" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M6 18L18 6M6 6l12 12"></path></svg>
                            </a>
                        @else
                            {{-- Show all Level 3 children --}}
                            @foreach($lvl2->children as $child)
                            <a href="{{ route('products.index', ['category' => $child->slug]) }}" 
                               class="bg-slate-50 text-slate-700 border border-slate-100 px-5 py-2.5 rounded-sm text-xs font-black uppercase tracking-widest hover:border-daytona-orange hover:text-daytona-orange transition-all duration-300">
                                {{ $child->name }}
                            </a>
                            @endforeach
                        @endif
                    </div>
                    @endif
                </div>
                @endif

                {{-- Active Motorcycle Filter Banner --}}
                @if($activeMoto)
                <div class="flex items-center justify-between mb-6 bg-daytona-navy text-white rounded-sm px-5 py-4">
                    <div class="flex items-center gap-3">
                        <div class="bg-daytona-orange p-2 rounded-sm shrink-0">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                            </svg>
                        </div>
                        <div>
                            <p class="text-[10px] font-black uppercase tracking-widest text-white/50">Filter Motor Aktif</p>
                            <p class="text-sm font-black text-daytona-orange">
                                {{ request('brand') }} {{ request('model') }}
                                &mdash;
                                <span class="text-white font-semibold">{{ $products->total() }} produk ditemukan</span>
                            </p>
                        </div>
                    </div>
                    <a href="{{ route('products.index') }}"
                       class="text-[10px] font-black uppercase tracking-widest text-white/40 hover:text-daytona-orange flex items-center gap-1.5 transition-colors shrink-0">
                        <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M6 18L18 6M6 6l12 12"/>
                        </svg>
                        Reset
                    </a>
                </div>
                @endif

                {{-- Search Result Banner --}}
                @if($search)
                <div class="flex items-center justify-between mb-8 bg-orange-50 border border-daytona-orange/20 rounded-lg px-5 py-4">
                    <div class="flex items-center gap-3">
                        <svg class="w-4 h-4 text-daytona-orange shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                        </svg>
                        <p class="text-sm font-semibold text-slate-700">
                            Menampilkan <span class="font-black text-daytona-orange">{{ $products->total() }}</span> hasil untuk
                            <span class="font-black text-daytona-navy">"{{ $search }}"</span>
                        </p>
                    </div>
                    <a href="{{ route('products.index') }}"
                       class="text-[10px] font-black uppercase tracking-widest text-slate-400 hover:text-daytona-orange flex items-center gap-1.5 transition-colors">
                        <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M6 18L18 6M6 6l12 12"/>
                        </svg>
                        Hapus Pencarian
                    </a>
                </div>
                @endif

                @if($products->count() > 0)
                    <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4">

                        @foreach($products as $product)
                        <div class="bg-white group rounded-sm overflow-hidden shadow-sm hover:shadow-xl transition-all duration-500 border border-slate-100 flex flex-col h-full relative">
                            <a href="{{ route('products.show', $product->slug) }}" class="absolute inset-0 z-10"></a>
                            <!-- Image -->
                            <div class="aspect-square bg-slate-50 overflow-hidden relative">
                                @if($product->image_path)
                                    <img src="{{ asset('storage/' . $product->image_path) }}" 
                                         alt="{{ $product->name }}" 
                                         class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">
                                @else
                                    <div class="w-full h-full flex items-center justify-center text-slate-200">
                                        <svg class="w-10 h-10" fill="currentColor" viewBox="0 0 24 24"><path d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.5 13.5l2.5 3.01L14.5 12l4.5 6H5l3.5-4.5z"/></svg>
                                    </div>
                                @endif
                            </div>
                            <!-- Details -->
                            <div class="p-4 flex-1 flex flex-col">
                                <span class="bg-daytona-navy/5 text-daytona-navy text-[8px] font-black uppercase px-2 py-0.5 tracking-widest w-fit mb-2">
                                    {{ $product->category->name ?? 'Racing Part' }}
                                </span>
                                <h4 class="text-xs font-bold text-slate-900 group-hover:text-daytona-orange transition-colors duration-300 mb-2 leading-tight line-clamp-2 h-8">
                                    {{ $product->name }}
                                </h4>
                                <div class="mt-auto pt-3 border-t border-slate-50 flex items-center justify-between">
                                    <span class="text-[8px] font-bold text-slate-400 uppercase tracking-widest">SKU: {{ $product->sku }}</span>
                                    <a href="{{ route('products.show', $product->slug) }}" class="relative z-20 bg-daytona-orange/10 text-daytona-orange px-2 py-1 rounded-sm text-[8px] font-black uppercase tracking-widest hover:bg-daytona-orange hover:text-white transition-all">
                                        Details
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>


                    <!-- Pagination -->
                    <div class="mt-16 border-t border-slate-100 pt-10">
                        {{ $products->links() }}
                    </div>
                @else
                    <div class="bg-slate-50 py-24 px-8 rounded-sm border-2 border-dashed border-slate-200 text-center">
                        <svg class="w-16 h-16 mx-auto text-slate-300 mb-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                        </svg>
                        @if($search)
                            <h4 class="text-xl font-bold text-slate-900 uppercase tracking-tight mb-2">Produk Tidak Ditemukan</h4>
                            <p class="text-slate-500 max-w-sm mx-auto">Tidak ada produk yang cocok dengan "<span class="font-bold">{{ $search }}</span>". Coba kata kunci lain.</p>
                            <a href="{{ route('products.index') }}" class="inline-block mt-8 bg-daytona-navy text-white px-8 py-3 rounded-sm font-black uppercase text-xs tracking-widest hover:bg-daytona-orange transition-all">
                                Lihat Semua Produk
                            </a>
                        @else
                            <h4 class="text-xl font-bold text-slate-900 uppercase tracking-tight mb-2">No Products Found</h4>
                            <p class="text-slate-500 max-w-sm mx-auto">Kami tidak dapat menemukan produk di kategori ini.</p>
                            <a href="{{ route('products.index') }}" class="inline-block mt-8 bg-daytona-navy text-white px-8 py-3 rounded-sm font-black uppercase text-xs tracking-widest hover:bg-daytona-orange transition-all">
                                View All Products
                            </a>
                        @endif
                    </div>
                @endif
            </div>

        </div>
    </div>
</section>
@endsection

@push('scripts')
<style>
    [x-cloak] { display: none !important; }
</style>
@endpush
